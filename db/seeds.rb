# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup.id).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }].id)
#   Mayor.create(:name => 'Daley', :city => cities.first.id)

states = ['amazonas', 'áncash', 'apurímac', 'arequipa', 'ayacucho', 'cajamarca', 'callao', 'cusco', 'huancavelica', 'huánuco', 'ica', 'junín', 'la libertad', 'lambayeque', 'lima', 'loreto', 'madre de dios', 'moquegua', 'pasco', 'piura', 'puno', 'san martín', 'tacna', 'tumbes', 'ucayali']

states.each do |state|
  State.create(:name => state)
end
amazonas = State.find_by_name('amazonas')
Province.create(:name => 'chachapoyas', :state_id => amazonas.id)
Province.create(:name => 'bagua', :state_id => amazonas.id)
Province.create(:name => 'bongará', :state_id => amazonas.id)
Province.create(:name => 'condorcanqui', :state_id => amazonas.id)
Province.create(:name => 'luya', :state_id => amazonas.id)
Province.create(:name => 'rodríguez de mendoza', :state_id => amazonas.id)
Province.create(:name => 'utcubamba', :state_id => amazonas.id)

ancash = State.find_by_name('áncash')
Province.create(:name => 'huaraz', :state_id => ancash.id)
Province.create(:name => 'aija', :state_id => ancash.id)
Province.create(:name => 'antonio raymondi', :state_id => ancash.id)
Province.create(:name => 'asunción', :state_id => ancash.id)
Province.create(:name => 'bolognesi', :state_id => ancash.id)
Province.create(:name => 'carhuaz', :state_id => ancash.id)
Province.create(:name => 'carlos fermín fitzcarrald', :state_id => ancash.id)
Province.create(:name => 'casma', :state_id => ancash.id)
Province.create(:name => 'corongo', :state_id => ancash.id)
Province.create(:name => 'huari', :state_id => ancash.id)
Province.create(:name => 'huarmey', :state_id => ancash.id)
Province.create(:name => 'huaylas', :state_id => ancash.id)
Province.create(:name => 'mariscal luzuriaga', :state_id => ancash.id)
Province.create(:name => 'ocros', :state_id => ancash.id)
Province.create(:name => 'pallasca', :state_id => ancash.id)
Province.create(:name => 'pomabamba', :state_id => ancash.id)
Province.create(:name => 'recuay', :state_id => ancash.id)
Province.create(:name => 'santa', :state_id => ancash.id)
Province.create(:name => 'sihuas', :state_id => ancash.id)
Province.create(:name => 'yungay', :state_id => ancash.id)

apurimac = State.find_by_name('apurímac')
Province.create(:name => 'abancay', :state_id => apurimac.id)
Province.create(:name => 'antabamba', :state_id => apurimac.id)
Province.create(:name => 'aymaraes', :state_id => apurimac.id)
Province.create(:name => 'cotabambas', :state_id => apurimac.id)
Province.create(:name => 'grau', :state_id => apurimac.id)
Province.create(:name => 'chincheros', :state_id => apurimac.id)
Province.create(:name => 'andahuaylas', :state_id => apurimac.id)

arequipa = State.find_by_name('arequipa')
Province.create(:name => 'arequipa', :state_id => arequipa.id)
Province.create(:name => 'camaná', :state_id => arequipa.id)
Province.create(:name => 'caravelí', :state_id => arequipa.id)
Province.create(:name => 'castilla', :state_id => arequipa.id)
Province.create(:name => 'caylloma', :state_id => arequipa.id)
Province.create(:name => 'condesuyos', :state_id => arequipa.id)
Province.create(:name => 'islay', :state_id => arequipa.id)
Province.create(:name => 'la unión', :state_id => arequipa.id)

ayacucho = State.find_by_name('ayacucho')
Province.create(:name => 'cangallo', :state_id => ayacucho.id)
Province.create(:name => 'huanta', :state_id => ayacucho.id)
Province.create(:name => 'huamanga', :state_id => ayacucho.id)
Province.create(:name => 'huancasancos', :state_id => ayacucho.id)
Province.create(:name => 'la mar', :state_id => ayacucho.id)
Province.create(:name => 'lucanas', :state_id => ayacucho.id)
Province.create(:name => 'parinacochas', :state_id => ayacucho.id)
Province.create(:name => 'páucar del sara sara', :state_id => ayacucho.id)
Province.create(:name => 'sucre', :state_id => ayacucho.id)
Province.create(:name => 'victor fajardo', :state_id => ayacucho.id)
Province.create(:name => 'vilcas huamán', :state_id => ayacucho.id)

cajamarca = State.find_by_name('cajamarca')
Province.create(:name => 'san ignacio', :state_id => cajamarca.id)
Province.create(:name => 'jaén', :state_id => cajamarca.id)
Province.create(:name => 'cutervo', :state_id => cajamarca.id)
Province.create(:name => 'chota', :state_id => cajamarca.id)
Province.create(:name => 'santa cruz', :state_id => cajamarca.id)
Province.create(:name => 'hualgayoc', :state_id => cajamarca.id)
Province.create(:name => 'celendín', :state_id => cajamarca.id)
Province.create(:name => 'san miguel', :state_id => cajamarca.id)
Province.create(:name => 'san pablo', :state_id => cajamarca.id)
Province.create(:name => 'cajamarca', :state_id => cajamarca.id)
Province.create(:name => 'contumazá', :state_id => cajamarca.id)
Province.create(:name => 'cajabamba', :state_id => cajamarca.id)
Province.create(:name => 'san marcos', :state_id => cajamarca.id)

callao = State.find_by_name('callao')
Province.create(:name => 'callao', :state_id => callao.id)

cusco = State.find_by_name('cusco')
Province.create(:name => 'cuzco', :state_id => cusco.id)
Province.create(:name => 'acomayo', :state_id => cusco.id)
Province.create(:name => 'anta', :state_id => cusco.id)
Province.create(:name => 'calca', :state_id => cusco.id)
Province.create(:name => 'canas', :state_id => cusco.id)
Province.create(:name => 'canchis', :state_id => cusco.id)
Province.create(:name => 'chumbivilcas', :state_id => cusco.id)
Province.create(:name => 'espinar', :state_id => cusco.id)
Province.create(:name => 'la convención', :state_id => cusco.id)
Province.create(:name => 'paruro', :state_id => cusco.id)
Province.create(:name => 'paucartambo', :state_id => cusco.id)
Province.create(:name => 'quispicanchi', :state_id => cusco.id)
Province.create(:name => 'urubamba', :state_id => cusco.id)

huancavelica = State.find_by_name('huancavelica')
Province.create(:name => 'huancavelica', :state_id => huancavelica.id)
Province.create(:name => 'acobamba', :state_id => huancavelica.id)
Province.create(:name => 'angaraes', :state_id => huancavelica.id)
Province.create(:name => 'castrovirreyna', :state_id => huancavelica.id)
Province.create(:name => 'churcampa', :state_id => huancavelica.id)
Province.create(:name => 'huaytará', :state_id => huancavelica.id)
Province.create(:name => 'tayacaja', :state_id => huancavelica.id)

huanuco = State.find_by_name('huánuco')
Province.create(:name => 'huánuco', :state_id => huanuco.id)
Province.create(:name => 'ambo', :state_id => huanuco.id)
Province.create(:name => 'dos de mayo', :state_id => huanuco.id)
Province.create(:name => 'huacaybamba', :state_id => huanuco.id)
Province.create(:name => 'huamalíes', :state_id => huanuco.id)
Province.create(:name => 'leoncio prado', :state_id => huanuco.id)
Province.create(:name => 'marañón', :state_id => huanuco.id)
Province.create(:name => 'pachitea', :state_id => huanuco.id)
Province.create(:name => 'puerto inca', :state_id => huanuco.id)
Province.create(:name => 'lauricocha', :state_id => huanuco.id)
Province.create(:name => 'yarowilca', :state_id => huanuco.id)

ica = State.find_by_name('ica')
Province.create(:name => 'ica', :state_id => ica.id)
Province.create(:name => 'chincha', :state_id => ica.id)
Province.create(:name => 'nazca', :state_id => ica.id)
Province.create(:name => 'palpa', :state_id => ica.id)
Province.create(:name => 'pisco', :state_id => ica.id)

junin = State.find_by_name('junín')
Province.create(:name => 'huancayo', :state_id => junin.id)
Province.create(:name => 'concepción', :state_id => junin.id)
Province.create(:name => 'chanchamayo', :state_id => junin.id)
Province.create(:name => 'jauja', :state_id => junin.id)
Province.create(:name => 'junín', :state_id => junin.id)
Province.create(:name => 'satipo', :state_id => junin.id)
Province.create(:name => 'tarma', :state_id => junin.id)
Province.create(:name => 'yauli', :state_id => junin.id)
Province.create(:name => 'chupaca', :state_id => junin.id)

la_libertad = State.find_by_name('la libertad')
Province.create(:name => 'trujillo', :state_id => la_libertad.id)
Province.create(:name => 'ascope', :state_id => la_libertad.id)
Province.create(:name => 'bolívar', :state_id => la_libertad.id)
Province.create(:name => 'chepén', :state_id => la_libertad.id)
Province.create(:name => 'julcán', :state_id => la_libertad.id)
Province.create(:name => 'otuzco', :state_id => la_libertad.id)
Province.create(:name => 'pacasmayo', :state_id => la_libertad.id)
Province.create(:name => 'pataz', :state_id => la_libertad.id)
Province.create(:name => 'sánchez carrión', :state_id => la_libertad.id)
Province.create(:name => 'santiago de chuco', :state_id => la_libertad.id)
Province.create(:name => 'gran chimú', :state_id => la_libertad.id)
Province.create(:name => 'virú', :state_id => la_libertad.id)

lambayeque = State.find_by_name('lambayeque')
Province.create(:name => 'chiclayo', :state_id => lambayeque.id)
Province.create(:name => 'ferreñafe', :state_id => lambayeque.id)
Province.create(:name => 'lambayeque', :state_id => lambayeque.id)

lima = State.find_by_name('lima')
Province.create(:name => 'lima', :state_id => lima.id)
Province.create(:name => 'barranca', :state_id => lima.id)
Province.create(:name => 'cajatambo', :state_id => lima.id)
Province.create(:name => 'canta', :state_id => lima.id)
Province.create(:name => 'cañete', :state_id => lima.id)
Province.create(:name => 'huaral', :state_id => lima.id)
Province.create(:name => 'huarochirí', :state_id => lima.id)
Province.create(:name => 'huaura', :state_id => lima.id)
Province.create(:name => 'oyón', :state_id => lima.id)
Province.create(:name => 'yauyos', :state_id => lima.id)

loreto = State.find_by_name('loreto')
Province.create(:name => 'maynas', :state_id => loreto.id)
Province.create(:name => 'alto amazonas', :state_id => loreto.id)
Province.create(:name => 'loreto', :state_id => loreto.id)
Province.create(:name => 'mariscal ramón castilla', :state_id => loreto.id)
Province.create(:name => 'requena', :state_id => loreto.id)
Province.create(:name => 'ucayali', :state_id => loreto.id)
Province.create(:name => 'datem del marañón', :state_id => loreto.id)

madre_de_dios = State.find_by_name('madre de dios')
Province.create(:name => 'tambopata', :state_id => madre_de_dios.id)
Province.create(:name => 'manu', :state_id => madre_de_dios.id)
Province.create(:name => 'tahuamanu', :state_id => madre_de_dios.id)

moquegua = State.find_by_name('moquegua')
Province.create(:name => 'mariscal nieto', :state_id => moquegua.id)
Province.create(:name => 'general sánchez cerro', :state_id => moquegua.id)
Province.create(:name => 'ilo', :state_id => moquegua.id)

pasco = State.find_by_name('pasco')
Province.create(:name => 'pasco', :state_id => pasco.id)
Province.create(:name => 'daniel alcides carrión', :state_id => pasco.id)
Province.create(:name => 'oxapampa', :state_id => pasco.id)

piura = State.find_by_name('piura')
Province.create(:name => 'piura', :state_id => piura.id)
Province.create(:name => 'ayabaca', :state_id => piura.id)
Province.create(:name => 'huancabamba', :state_id => piura.id)
Province.create(:name => 'morropón', :state_id => piura.id)
Province.create(:name => 'paita', :state_id => piura.id)
Province.create(:name => 'sullana', :state_id => piura.id)
Province.create(:name => 'talara', :state_id => piura.id)
Province.create(:name => 'sechura', :state_id => piura.id)

puno = State.find_by_name('puno')
Province.create(:name => 'puno', :state_id => puno.id)
Province.create(:name => 'azángaro', :state_id => puno.id)
Province.create(:name => 'carabaya', :state_id => puno.id)
Province.create(:name => 'chucuito', :state_id => puno.id)
Province.create(:name => 'el collao', :state_id => puno.id)
Province.create(:name => 'huancané', :state_id => puno.id)
Province.create(:name => 'lampa', :state_id => puno.id)
Province.create(:name => 'melgar', :state_id => puno.id)
Province.create(:name => 'moho', :state_id => puno.id)
Province.create(:name => 'san antonio de putina', :state_id => puno.id)
Province.create(:name => 'san román', :state_id => puno.id)
Province.create(:name => 'sandia', :state_id => puno.id)
Province.create(:name => 'yunguyo', :state_id => puno.id)

san_martin = State.find_by_name('san martín')
Province.create(:name => 'moyobamba', :state_id => san_martin.id)
Province.create(:name => 'bellavista', :state_id => san_martin.id)
Province.create(:name => 'el dorado', :state_id => san_martin.id)
Province.create(:name => 'huallaga', :state_id => san_martin.id)
Province.create(:name => 'lamas', :state_id => san_martin.id)
Province.create(:name => 'mariscal cáceres', :state_id => san_martin.id)
Province.create(:name => 'picota', :state_id => san_martin.id)
Province.create(:name => 'rioja', :state_id => san_martin.id)
Province.create(:name => 'san martín', :state_id => san_martin.id)
Province.create(:name => 'tocache', :state_id => san_martin.id)

tacna = State.find_by_name('tacna')
Province.create(:name => 'tacna', :state_id => tacna.id)
Province.create(:name => 'candarave', :state_id => tacna.id)
Province.create(:name => 'jorge basadre', :state_id => tacna.id)
Province.create(:name => 'tarata', :state_id => tacna.id)

tumbes = State.find_by_name('tumbes')
Province.create(:name => 'tumbes', :state_id => tumbes.id)
Province.create(:name => 'contralmirante villar', :state_id => tumbes.id)
Province.create(:name => 'zarumilla', :state_id => tumbes.id)

ucayali = State.find_by_name('ucayali')
Province.create(:name => 'coronel portillo', :state_id => ucayali.id)
Province.create(:name => 'atalaya', :state_id => ucayali.id)
Province.create(:name => 'padre abad', :state_id => ucayali.id)
Province.create(:name => 'purús', :state_id => ucayali.id)

topics = ['abasto','acceso a la información','acciones afirmativas','acciones colectivas','administración pública','agricultura','amparo','Amparo.','aprobación','archivos','arraigo','asistencia Social','auditorías','autonomía constitucional','candidaturas ciudadanas','candidaturas independientes','CNDH','colegiaturas','comunicación política','Congreso','constitucionalidad','consulta popular','control legislativo','control presupuestario','defensoría pública.','delicuencia organizada.','dependencias homólogas','derecho a la salud','derechos colectivos','derechos de las mujeres','derechos de las niñas','derechos de las personas adultas mayores.','derechos de las personas con capacidades diferentes','derechos de las víctimas','derechos de los migrantes','derechos de niñas','derechos humanos','derechos indígenas','derechos laborales','derechos políticos','desarrollo municipal','desarrollo rural','desarrollo rural sustentable','Desarrollo Social','desarrollo social','desempeño de funcionarios','diputados','educación','educación básica','elaboración de reglamentos','elecciones','elección de auditor','energía','entidades paraestatales.','equidad de género','evaluación','evaluación del desempeño','Evaluación.','excedentes petroleros','facultades de la Cámara de Diputados','facultades del Congreso','financiamiento de partidos','fiscalización','impuestos','impugnación ciudadana','ingresos','iniciativa preferente','iniciativas ciudadanas','intérprete','Justicia','justicia','labor legislativa','ley de amparo','los niños y los adolescentes','migración','niños y adolescentes.','nombramientos','organismos públicos autónomos','participación ciudadana','participación social','Pemex','pensiones','Plan Nacional de Desarrollo','poder legislativo','políticas de género','políticas públicas','presupuesto','procedimiento legislativo','procedimiento penal','procedimientos penales','producción','profesionalización','programa especial concurrente','programas de desarrollo social','programas de inversión','propaganda política','protección de datos persnoales','publicidad','publicidad electoral','publicidad oficial','pueblos indígenas','quejas','Reforma Constitucional','reforma constitucional','reforma política','reglas de operación','regulación.','rendición de cuentas','representación popular','responsabilidad civil','responsabilidades administrativas','salud pública','secretaria de desarrollo social','sedesol','seguridad pública','seguridad social','senadores','servicios','Sistema de Evaluación del desempeño','sociedad civil','subejercicios','suplencia de la queja','Suprema Corte de Justicia de la Nación','tarifas','tiempos oficiales','trabajo legislativo','transparencia','violación de garantías individuales','violencia de género']

topics.each_with_index do |topic,index|
  Topic.create(:name => topic, :position => index)
end

avatar = ['moe.gif','apu.png','red.png','bart.jpg','homer.jpg']
miletone_states = ['new','in_progress','finished']

State.all.each do |state|
  official = Official.create(
      :name => Faker::Name.name, 
      :position => 1, 
      :facebook => Faker::Internet.user_name, 
      :twitter => Faker::Internet.user_name,
      :state_id => state.id
  )
  official.avatar = File.open("doc/#{avatar[rand(5)]}")
  official.save
  for i in 1..rand(6) do
    promise = Promise.create(
        :title => Faker::Lorem.sentence(rand(6)), 
        :description => Faker::Lorem.paragraph(rand(6)), 
        :official_id => official.id)
        
    for i in 1..rand(6) do
      Milestone.create(
          :name => Faker::Lorem.sentence(rand(6)),
          :description => Faker::Lorem.paragraph(rand(6)),
          :promise_id => promise.id,
          :state => miletone_states[rand(3)])
    end
  end
end

Province.all.each do |province|
  official = Official.create(
      :name => Faker::Name.name, 
      :position => 0, 
      :facebook => Faker::Internet.user_name, 
      :twitter => Faker::Internet.user_name,
      :state_id => province.state.id,
      :province_id => province.id
  )
  official.avatar = File.open("doc/#{avatar[rand(5)]}")
  official.save
  for i in 1..rand(6) do
    topics = []
    for i in 1..rand(16) do
      topics << rand(Topic.last.id-1)+1
    end
    promise = Promise.create(
        :title => Faker::Lorem.sentence(rand(6)), 
        :description => Faker::Lorem.paragraph(rand(6)), 
        :official_id => official.id,
        :topic_ids => topics)
        
    for i in 1..rand(6) do
      Milestone.create(
          :name => Faker::Lorem.sentence(rand(6)),
          :description => Faker::Lorem.paragraph(rand(6)),
          :promise_id => promise.id,
          :state => miletone_states[rand(3)])
    end
  end
end