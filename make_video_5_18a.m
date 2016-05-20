function [Bez_points, num_path, num_segments, delta_t, t, solution1, solution2, solution3, solution4, solution5,...
    Path_bez, ms_i, uav_ws, n_obs, obs, obs_rad] = make_video_5_18a()
%inputs
Bez_points = [5,5;11.3795537673639,9.75275699306449;17.7591075347279,14.5055139861290;23.0488745647088,19.1708935730708;28.3386415946897,23.8362731600125;26.1181878135652,32.1858343999632;23.8977340324407,40.5353956399139;30.5045959828192,45.4909684869892;37.1114579331976,50.4465413340645;40.6036751450705,56.4470496136719;44.0958923569435,62.4475578932792;45.6883149390583,70.4866784802430;47.2807375211730,78.5257990672069;51.7149399545827,84.0652487991767;56.1491423879924,89.6046985311465;64.2273461384169,91.8871493229330;72.3055498888414,94.1696001147195;76.3754295680074,95.9944165725081;80.4453092471733,97.8192330302967;85.1019546670066,98.2585713940637;89.7586000868398,98.6979097578307;100,100];

num_path = 3;
num_segments = 11; %0;
delta_t = 0.1;
t = 0 : delta_t : 1;

solution1 = [5,5;10.3972833561553,8.38927086891360;15.7945667123105,11.7785417378274;19.6340153230120,17.8308756074805;23.4734639337134,23.8832094771336;29.5146549073450,27.6390262046651;17.7591075347279,14.5055139861290;19.9845220491647,21.7258846431337;22.2099365636971,28.9462553001723;26.7708549868616,35.0193815569607;31.3317734100955,41.0925078136738;37.4784215668400,45.4375689009848;28.3386415946897,23.8362731600125;36.7297033499233,24.7026150944416;45.1207651051569,25.5689570288707;49.7103284258108,29.8981457875562;54.2998917497068,34.2273345311480;54.7400536240568,39.6527380037147;23.8977340324407,40.5353956399139;30.5045962989245,45.4909683002382;37.1114585654083,50.4465409605625;40.6531294605324,56.4074233870018;44.1948003556564,62.3683058134411;51.2525562976097,66.8244456989691;37.1114579331976,50.4465413340645;40.6036751450705,56.4470496136719;44.0958923569435,62.4475578932792;51.1250710313167,66.4939813303437;58.1542497056898,70.5404047674082;65.5713909513058,68.8823033771394;44.0958923569435,62.4475578932792;49.2715260104264,67.2328438440677;54.4471596633771,72.0181297948878;63.2615825644861,69.5409731035802;72.0760054653151,67.0638156030022;77.5822218518383,65.0873556883820;47.2807375211730,78.5257990672069;51.7149399545827,84.0652487991767;56.1491423879924,89.6046985311465;64.2273461384169,91.8871493229330;72.3055498888414,94.1696001147195;78.6474141910133,96.0175756399686;56.1491423879924,89.6046985311465;64.2273461384169,91.8871493229330;72.3055498888414,94.1696001147195;78.4578709923305,96.6096423461807;84.6101920958195,99.0496845776419;93.1500534507789,99.2161966618376;72.3055498888414,94.1696001147195;78.1755825137661,96.6093274756974;84.0456151386896,99.0490548366753;90.0322127569229,100.166392251237;96.0188103751545,101.283729665799;100.000036155357,99.9999894386650];

solution2 = [5,5;11.3795537673639,9.75275699306449;17.7591075347279,14.5055139861290;20.2998415630132,21.5408651674207;22.8405755912985,28.5762163487125;26.7824389309001,35.0398818873086;17.7591075347279,14.5055139861290;23.0488745647088,19.1708935730708;28.3386415946897,23.8362731600125;36.7297033499233,24.7026150944416;45.1207651051570,25.5689570288707;48.1225617626963,33.1459287376350;28.3386415946897,23.8362731600125;35.5706152264027,21.0359633198636;42.8025888581157,18.2356534797147;45.2848679074643,24.0168340307193;47.7671469568129,29.7980145817239;54.5315442814105,35.6516047248836;23.8977340324407,40.5353956399139;28.7220739266078,44.4840263555897;33.5464138207749,48.4326570712654;37.5837820303385,49.0336405998732;41.6211502399022,49.6346241284810;48.2994792150345,45.4587712920471;37.1114579331976,50.4465413340645;36.0137833962771,56.8738289520485;34.9161088610957,63.3011165749374;43.8800257885495,57.6570604600175;52.8439427181160,52.0130043424110;55.1404061081258,58.6352613199379;44.0958923569435,62.4475578932792;47.0441247946305,64.7674633973693;49.9923572323175,67.0873689014593;55.8697405862043,69.4912875496525;61.7471239400911,71.8952061978456;65.5713909513059,68.8823033771394;47.2807375211730,78.5257990672069;47.0100018293669,83.4949672518188;46.7392661375607,88.4641354364309;54.6834068232423,76.5670223216541;62.6275475089239,64.6699092068777;62.9533347544945,72.0435741679516;56.1491423879924,89.6046985311465;64.2273461384169,91.8871493229330;72.3055498888414,94.1696001147195;78.4578708319514,96.6096428007463;84.6101917750614,99.0496854867730;93.1500552105443,99.2161812711244;72.3055498888414,94.1696001147195;75.1287480150482,99.7734262831138;77.9519461412548,105.377252451508;85.8705131462399,104.611954235540;93.7890801512254,103.846656019571;99.9998956211574,99.9999932354545];

solution3 = [5,5;11.3795537673639,9.75275699306449;17.7591075347279,14.5055139861290;20.2998420978362,21.5408648431995;22.8405766609435,28.5762157002693;26.7824389332428,35.0398818914331;17.7591075347279,14.5055139861290;19.9845389155163,21.7258865414980;22.2099702961591,28.9462590967538;26.7708709951138,35.0194091387579;31.3317716942009,41.0925591806596;37.4794015494763,45.4364947944855;28.3386415946897,23.8362731600125;26.1181878135652,32.1858343999632;23.8977340324407,40.5353956399139;32.2214748909655,44.2546913965404;40.5452157494902,47.9739871531669;44.3993506640406,52.7800671918923;23.8977340324407,40.5353956399139;30.5045959828192,45.4909684869892;37.1114579331981,50.4465413340641;40.6531287525896,56.4074239499652;44.1947995719818,62.3683065658662;51.2525573573549,66.8244441443595;37.1114579331976,50.4465413340645;39.2577733044173,57.3632120479635;41.4040886756383,64.2798827618710;44.4014651145089,71.4477590439926;47.3988415533955,78.6156353261211;55.3308412309320,80.9378373599901;44.0958923569435,62.4475578932792;45.6883149390583,70.4866784802430;47.2807375211730,78.5257990672069;51.7149399545857,84.0652487991855;56.1491423879983,89.6046985311642;64.2273461385150,91.8871493229872;47.2807375211730,78.5257990672069;51.7149399545827,84.0652487991767;56.1491423879923,89.6046985311466;64.2273461384170,91.8871493229329;72.3055498888416,94.1696001147192;78.6474141910118,96.0175756399597;56.1491423879924,89.6046985311465;64.2273461384169,91.8871493229330;72.3055498888414,94.1696001147195;78.4578709921752,96.6096423466194;84.6101920955090,99.0496845785192;93.1500534519371,99.2161966468347;72.3055498888414,94.1696001147195;75.7458697973891,100.784601870917;79.1861897059370,107.399603627114;85.7821318662877,102.779181133859;92.3780740266387,98.1587586406043;99.9999934508123,100.000001972145];

solution4 = [5,5;13.9900908637414,3.36771757812945;22.9801817274829,1.73543515628569;28.6764989181073,0.327753938943687;34.3728161087333,-1.07992727840391;39.8385384127362,8.74478755168641;17.7591075347279,14.5055139861290;16.9408949278151,4.72071123640925;16.1226823209023,-5.06409151331048;26.6736159020174,-1.32627402564169;37.2245494831326,2.41154346202710;39.0800379680150,6.53320724945457;28.3386415946897,23.8362731600125;31.5167185466729,17.9600084562141;34.6947954986571,12.0837437523907;40.7708281249988,6.22878363536582;46.8468607513485,0.373823518351977;48.9993354197494,10.8353372720243;23.8977340324407,40.5353956399139;28.0275767655125,24.9329567758624;32.1574194985843,9.33051791181098;34.3735668431097,17.7278440770621;36.5897141876417,26.1251702422759;43.6391869653913,28.7353746474378;37.1273922635137,50.4272096833566;40.6983341133850,44.6980915532196;44.2658719796961,38.9720381300679;48.9839134272623,32.4157737767770;53.7008425620876,25.8614324098656;58.1767798367132,23.2231319968102;44.0483692605702,62.1877132451395;45.8192643822605,51.6185403052214;47.5901595056448,41.0493673647059;58.0402216296934,47.6834644576607;68.4902837563149,54.3175615504193;66.1555753978165,44.4995694404649;47.2807375211730,78.5257990672069;53.1247300349150,67.8390476629565;58.9687225486597,57.1522962591420;59.0575374027917,63.2497334320977;59.1463522575267,69.3471706042939;62.9519696683193,72.0433449218234;56.0894167169290,89.6046985311465;55.5017922322835,74.9940475156644;54.9141677473731,60.3833965051438;61.0608764226842,69.9092902073475;67.2075850998388,79.4351839083310;70.6070734931419,81.3735408177998;72.3055498888414,94.1696001147195;77.7434343053130,87.8575137961064;83.1813187217848,81.5454274774932;90.5478725152481,81.6690285353433;97.9144263087119,81.7926295931935;97.2149704828130,92.9692912456042];

solution5 = [5,5;0.567480234169951,13.9389809972398;-3.86503953166010,22.8779619944796;1.85826557367942,27.6222523936789;7.58157067901888,32.3665427928784;12.6172933379188,38.0531257389451;17.7591075347279,14.5055139861290;10.3146086199045,22.5775331223947;2.87010970508113,30.6495522586604;5.87562522974600,35.8751368761441;8.88114075441087,41.1007214936277;12.9525207096355,49.0990428912212;28.3385666080650,23.8362678316588;26.9561981538204,29.2012643029382;25.5738366672192,34.5662607737712;18.5260298247555,36.8062339537960;11.4782043516154,39.0462071333887;3.77436530193901,36.9794904510948;23.9464246398975,40.4834070063846;24.4999261051516,44.5001225431403;25.0534275687780,48.5168380831055;16.3945235344811,49.9396145960198;7.73561948846930,51.3623911103654;22.6204953395579,57.2208110643438;37.1114579331976,50.4465413340645;39.2596981890072,57.3621014364029;41.4079384448171,64.2776615387421;44.4027035101590,71.4469840444937;47.3974685755016,78.6163065502466;55.3313873423652,80.9365652853731;44.0958923569435,62.4475578932792;40.5653994770672,69.5804819563737;37.0349065971909,76.7134060194681;40.8711508673265,78.9909063079316;44.7073951374622,81.2684065963950;55.5515648779700,81.3307285751582;47.2807375211730,78.5257990672069;51.7149399545827,84.0652487991767;56.1491423879924,89.6046985311465;64.2273461384169,91.8871493229331;72.3055498888415,94.1696001147197;78.6474141910102,96.0175756399697;56.1491423879924,89.6046985311465;64.2273461384169,91.8871493229330;72.3055498888414,94.1696001147195;78.4578709922815,96.6096423463163;84.6101920957216,99.0496845779130;93.1500534500242,99.2161966569134;72.3055498888414,94.1696001147195;76.3029185175183,97.9722966590268;80.3002871461951,101.774993203334;89.3349776106466,105.118717599491;98.3696680750982,108.462441995648;99.9999861735268,100.000014546900];

Path_bez = [0,0;1.01379553767364,0.997527569930645;2.05518215069456,1.99011027972258;3.12415983906275,2.97774812937580;4.22072860277823,3.96044111889032;5.34488844184098,4.93818924826612;6.49663935625101,5.91099251750322;7.67598134600832,6.87885092660160;8.88291441111292,7.84176447556127;10.1174385515648,8.79973316438224;11.3795537673639,9.75275699306449;11.3795537673639,9.75275699306449;12.6445666534629,10.7024346176162;13.8877838048142,11.6503646940454;15.1092052214178,12.5965472223521;16.3088309032738,13.5409822025364;17.4866608503821,14.4836696345983;18.6426950627428,15.4246095185377;19.7769335403558,16.3638018543546;20.8893762832211,17.3012466420491;21.9800232913388,18.2369438816212;23.0488745647088,19.1708935730708;23.0488745647088,19.1708935730708;24.0317257625939,20.1408113069892;24.8643725442570,21.1844126739678;25.5468149096979,22.3016976740066;26.0790528589167,23.4926663071056;26.4610863919134,24.7573185732648;26.6929155086880,26.0956544724841;26.7745402092405,27.5076740047636;26.7059604935708,28.9933771701033;26.4871763616791,30.5527639685032;26.1181878135652,32.1858343999632;26.1181878135652,32.1858343999632;25.7623702146554,33.8218067640246;25.5830989303756,35.3898993602285;25.5803739607258,36.8901121885749;25.7541953057061,38.3224452490637;26.1045629653165,39.6868985416951;26.6314769395569,40.9834720664689;27.3349372284274,42.2121658233852;28.2149438319279,43.3729798124441;29.2714967500585,44.4659140336454;30.5045959828192,45.4909684869892;30.5045959828192,45.4909684869892;31.7948219255098,46.4925324107296;33.0227549734303,47.5149950431206;34.1883951265807,48.5583563841623;35.2917423849610,49.6226164338546;36.3327967485712,50.7077751921975;37.3115582174113,51.8138326591911;38.2280267914813,52.9407888348353;39.0822024707811,54.0886437191302;39.8740852553109,55.2573973120757;40.6036751450705,56.4470496136719;40.6036751450705,56.4470496136719;41.2831206411476,57.6675373926669;41.9245702446294,58.9287974178091;42.5280239555161,60.2308296890984;43.0934817738076,61.5736342065348;43.6209436995040,62.9572109701183;44.1104097326051,64.3815599798490;44.5618798731112,65.8466812357268;44.9753541210220,67.3525747377518;45.3508324763377,68.8992404859238;45.6883149390583,70.4866784802430;45.6883149390583,70.4866784802430;46.0352172539942,72.0695058890859;46.4389551659560,73.6023398808288;46.8995286749437,75.0851804554719;47.4169377809573,76.5180276130151;47.9911824839968,77.9008813534584;48.6222627840622,79.2337416768018;49.3101786811534,80.5166085830453;50.0549301752706,81.7494820721890;50.8565172664137,82.9323621442328;51.7149399545827,84.0652487991767;51.7149399545827,84.0652487991767;52.6382204544348,85.1405687561688;53.6343809806272,86.1507487343573;54.7034215331599,87.0957887337421;55.8453421120328,87.9756887543232;57.0601427172461,88.7904487961007;58.3478233487997,89.5400688590745;59.7083840066935,90.2245489432446;61.1418246909277,90.8438890486111;62.6481454015022,91.3980891751739;64.2273461384169,91.8871493229330;64.2273461384169,91.8871493229330;65.8029036477892,92.3390631379503;67.2982946757364,92.7818242662877;68.7135192222583,93.2154327079451;70.0485772873551,93.6398884629226;71.3034688710268,94.0551915312201;72.4781939732732,94.4613419128376;73.5727525940945,94.8583396077752;74.5871447334907,95.2461846160328;75.5213703914616,95.6248769376104;76.3754295680074,95.9944165725081;76.3754295680074,95.9944165725081;77.1952731612472,96.3455250831256;78.0268520693005,96.6689240318627;78.8701662921670,96.9646134187194;79.7252158298469,97.2325932436956;80.5920006823401,97.4728635067913;81.4705208496467,97.6854242080067;82.3607763317667,97.8702753473416;83.2627671287000,98.0274169247961;84.1764932404466,98.1568489403701;85.1019546670066,98.2585713940637;85.1019546670066,98.2585713940637;86.0891312959065,98.3550665856011;87.1880030146729,98.4688168147066;88.3985698233059,98.5998220813801;89.7208317218055,98.7480823856216;91.1547887101715,98.9135977274313;92.7004407884041,99.0963681068089;94.3577879565033,99.2963935237546;96.1268302144690,99.5136739782684;98.0075675623012,99.7482094703502;100,100];

ms_i = 5;
uav_ws = 1.0;
%Make youtube video

%For static obstacle field, need:
%position, size of static obstacles

rng(10);
n_obs = 50; %number of static obstacles
obs = rand(n_obs,2)*90+5; %obstacle locations
rng(4); %for partially random obstacle size
obs_rad = 4-uav_ws +  rand(n_obs,1)*3; %obstacle radius

end