(function(b,c){var a;b.rails=a={linkClickSelector:"a[data-confirm], a[data-method], a[data-remote]",selectChangeSelector:"select[data-remote]",formSubmitSelector:"form",formInputClickSelector:"form input[type=submit], form input[type=image], form button[type=submit], form button:not([type])",disableSelector:"input[data-disable-with], button[data-disable-with], textarea[data-disable-with]",enableSelector:"input[data-disable-with]:disabled, button[data-disable-with]:disabled, textarea[data-disable-with]:disabled",requiredInputSelector:"input[name][required]:not([disabled]),textarea[name][required]:not([disabled])",fileInputSelector:"input:file",CSRFProtection:function(e){var d=b('meta[name="csrf-token"]').attr("content");if(d){e.setRequestHeader("X-CSRF-Token",d)}},fire:function(g,d,f){var e=b.Event(d);g.trigger(e,f);return e.result!==false},confirm:function(d){return confirm(d)},ajax:function(d){return b.ajax(d)},handleRemote:function(g){var j,e,i,h=g.data("cross-domain")||null,d=g.data("type")||(b.ajaxSettings&&b.ajaxSettings.dataType);if(a.fire(g,"ajax:before")){if(g.is("form")){j=g.attr("method");e=g.attr("action");i=g.serializeArray();var f=g.data("ujs:submit-button");if(f){i.push(f);g.data("ujs:submit-button",null)}}else{if(g.is("select")){j=g.data("method");e=g.data("url");i=g.serialize();if(g.data("params")){i=i+"&"+g.data("params")}}else{j=g.data("method");e=g.attr("href");i=g.data("params")||null}}options={type:j||"GET",data:i,dataType:d,crossDomain:h,beforeSend:function(l,k){if(k.dataType===c){l.setRequestHeader("accept","*/*;q=0.5, "+k.accepts.script)}return a.fire(g,"ajax:beforeSend",[l,k])},success:function(l,k,m){g.trigger("ajax:success",[l,k,m])},complete:function(l,k){g.trigger("ajax:complete",[l,k])},error:function(m,k,l){g.trigger("ajax:error",[m,k,l])}};if(e){b.extend(options,{url:e})}a.ajax(options)}},handleMethod:function(h){var e=h.attr("href"),j=h.data("method"),f=b("meta[name=csrf-token]").attr("content"),i=b("meta[name=csrf-param]").attr("content"),g=b('<form method="post" action="'+e+'"></form>'),d='<input name="_method" value="'+j+'" type="hidden" />';if(i!==c&&f!==c){d+='<input name="'+i+'" value="'+f+'" type="hidden" />'}g.hide().append(d).appendTo("body");g.submit()},disableFormElements:function(d){d.find(a.disableSelector).each(function(){var e=b(this),f=e.is("button")?"html":"val";e.data("ujs:enable-with",e[f]());e[f](e.data("disable-with"));e.attr("disabled","disabled")})},enableFormElements:function(d){d.find(a.enableSelector).each(function(){var e=b(this),f=e.is("button")?"html":"val";if(e.data("ujs:enable-with")){e[f](e.data("ujs:enable-with"))}e.removeAttr("disabled")})},allowAction:function(d){var e=d.data("confirm"),f=false,g;if(!e){return true}if(a.fire(d,"confirm")){f=a.confirm(e);g=a.fire(d,"confirm:complete",[f])}return f&&g},blankInputs:function(i,f,h){var e=b(),g,d=f||"input,textarea";i.find(d).each(function(){g=b(this);if(h?g.val():!g.val()){e=e.add(g)}});return e.length?e:false},nonBlankInputs:function(e,d){return a.blankInputs(e,d,true)},stopEverything:function(d){b(d.target).trigger("ujs:everythingStopped");d.stopImmediatePropagation();return false},callFormSubmitBindings:function(e){var d=e.data("events"),f=true;if(d!==c&&d.submit!==c){b.each(d.submit,function(g,h){if(typeof h.handler==="function"){return f=h.handler(h.data)}})}return f}};b.ajaxPrefilter(function(d,f,e){if(!d.crossDomain){a.CSRFProtection(e)}});b(a.linkClickSelector).live("click.rails",function(f){var d=b(this);if(!a.allowAction(d)){return a.stopEverything(f)}if(d.data("remote")!==c){a.handleRemote(d);return false}else{if(d.data("method")){a.handleMethod(d);return false}}});b(a.selectChangeSelector).live("change.rails",function(f){var d=b(this);if(!a.allowAction(d)){return a.stopEverything(f)}a.handleRemote(d);return false});b(a.formSubmitSelector).live("submit.rails",function(i){var g=b(this),h=g.data("remote")!==c,f=a.blankInputs(g,a.requiredInputSelector),d=a.nonBlankInputs(g,a.fileInputSelector);if(!a.allowAction(g)){return a.stopEverything(i)}if(f&&g.attr("novalidate")==c&&a.fire(g,"ajax:aborted:required",[f])){return a.stopEverything(i)}if(h){if(d){return a.fire(g,"ajax:aborted:file",[d])}if(!b.support.submitBubbles&&a.callFormSubmitBindings(g)===false){return a.stopEverything(i)}a.handleRemote(g);return false}else{setTimeout(function(){a.disableFormElements(g)},13)}});b(a.formInputClickSelector).live("click.rails",function(f){var e=b(this);if(!a.allowAction(e)){return a.stopEverything(f)}var d=e.attr("name"),g=d?{name:d,value:e.val()}:null;e.closest("form").data("ujs:submit-button",g)});b(a.formSubmitSelector).live("ajax:beforeSend.rails",function(d){if(this==d.target){a.disableFormElements(b(this))}});b(a.formSubmitSelector).live("ajax:complete.rails",function(d){if(this==d.target){a.enableFormElements(b(this))}})})(jQuery);$.extend({new_milestone:function(){$("a#nuevo_hito").click(function(){if($("#new_milestones .well").size()<5){html=$("#new_milestones .well").first().clone();$.clean_milestone(html);html.appendTo("#new_milestones")}return false})},clean_milestone:function(a){a.find("input").val("").attr("name","promise[milestones_attributes]["+$("#new_milestones .well").size()+"][name]");a.find("textarea").val("").attr("name","promise[milestones_attributes]["+$("#new_milestones .well").size()+"][description]")},close_milestone:function(){$(".well a.close").live("click",function(){if($("#new_milestones .well").size()>1){$(this).parent().remove()}return false})},close_alerts:function(){$(".alert-message a.close").click(function(){$(this).parent().hide()})},auto_close_alerts:function(){$(".alert-message").delay(3000).fadeOut(2000)},sorteable_topics:function(a,b){$("#sorteable_topics tbody").sortable({type:"post",update:function(){$.ajax({async:true,complete:function(c){$("#sorteable_topics tbody").effect("highlight")},data:$("#sorteable_topics tbody").sortable("serialize")+"&authenticity_token="+encodeURIComponent(b),dataType:"script",url:a})}});$("#sorteable_topics").disableSelection()},change_provinces_select:function(){province_select=$("select#official_province_id");if($("select#official_position").attr("value")=="0"){province_select.removeAttr("disabled").removeClass("uneditable-input");$.fill_province_select()}else{province_select.attr("disabled",true).addClass("uneditable-input")}},change_province:function(){$("select#official_state_id").change(function(){$.change_provinces_select()});$("select#official_position").change(function(){$.change_provinces_select()})},fill_province_select:function(){state_id=$("select#official_state_id").attr("value");if(state_id!=""){$("select#official_province_id option").remove();$.getJSON("/admin/officials/provinces/"+state_id,function(a){$.each(a,function(b,c){option=$("<option>"+c.province.name+"</option>").attr("value",c.province.id).appendTo("select#official_province_id")})})}},show_governmnet_comments:function(){gov_header=$(".government_header");gov_header.click(function(){content=$("#"+$(this).attr("id")+"_government");if(content.is(":visible")){content.hide();gov_header.find("span").removeClass("ui-icon-triangle-1-s").addClass("ui-icon-triangle-1-e")}else{content.show();gov_header.find("span").removeClass("ui-icon-triangle-1-e").addClass("ui-icon-triangle-1-s")}})},show_citizens_comments:function(){cit_header=$(".citizens_header");cit_header.click(function(){content=$("#"+$(this).attr("id")+"_citizens");if(content.is(":visible")){content.hide();cit_header.find("span").removeClass("ui-icon-triangle-1-s").addClass("ui-icon-triangle-1-e")}else{content.show();cit_header.find("span").removeClass("ui-icon-triangle-1-e").addClass("ui-icon-triangle-1-s")}})}});$(document).ready(function(){$.new_milestone();$.close_milestone();$.close_alerts();$.auto_close_alerts();$.change_province();$.show_governmnet_comments();$.show_citizens_comments()});