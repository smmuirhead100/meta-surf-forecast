# frozen_string_literal: true

WaterQualityDepartment.find_or_create_by(code: 'LAPH') do |dept|
  dept.name = 'Los Angeles County Department of Public Health'
  dept.url = 'http://www.publichealth.lacounty.gov/phcommon/public/eh/water_quality/beach_grades.cfm'
end

CA = Region.find_or_create_by(name: 'California', sort_order: 10)
SF = Subregion.find_or_create_by(name: 'San Francisco', region: CA)
SF.sort_order = 10
SF.timezone = 'America/Los_Angeles'
SF.save!
SC = Subregion.find_or_create_by(name: 'Santa Cruz', region: CA)
SC.sort_order = 20
SC.timezone = 'America/Los_Angeles'
SC.save!
SBVC = Subregion.find_or_initialize_by(name: 'Santa Barbara/Ventura', region: CA)
SBVC.sort_order = 40
SBVC.timezone = 'America/Los_Angeles'
SBVC.save!
LA = Subregion.find_or_initialize_by(name: 'Los Angeles', region: CA)
LA.sort_order = 50
LA.timezone = 'America/Los_Angeles'
LA.save!
NOC = Subregion.find_or_initialize_by(name: 'North Orange County', region: CA)
NOC.sort_order = 60
NOC.timezone = 'America/Los_Angeles'
NOC.save!
SOC = Subregion.find_or_initialize_by(name: 'South Orange County', region: CA)
SOC.sort_order = 70
SOC.timezone = 'America/Los_Angeles'
SOC.save!
NSD = Subregion.find_or_initialize_by(name: 'North San Diego', region: CA)
NSD.sort_order = 80
NSD.timezone = 'America/Los_Angeles'
NSD.save!
SSD = Subregion.find_or_initialize_by(name: 'South San Diego', region: CA)
SSD.sort_order = 90
SSD.timezone = 'America/Los_Angeles'
SSD.save!
MX = Region.find_or_create_by(name: 'Mexico', sort_order: 15)
COL = Subregion.find_or_initialize_by(name: 'Colima', region: MX)
COL.sort_order = 30
COL.timezone = 'America/Mexico_City'
COL.save!
GUR = Subregion.find_or_initialize_by(name: 'Guerrero', region: MX)
GUR.sort_order = 32
GUR.timezone = 'America/Mexico_City'
GUR.save!
EU = Region.find_or_create_by(name: 'Europe', sort_order: 50)
PT = Subregion.find_or_initialize_by(name: 'Portugal', region: EU)
PT.sort_order = 30
PT.timezone = 'Europe/Lisbon'
PT.save!
HI = Region.find_or_create_by(name: 'Hawaii', sort_order: 14)
ONS = Subregion.find_or_initialize_by(name: 'Oahu - North Shore', region: HI)
ONS.assign_attributes(sort_order: 5, timezone: 'Pacific/Honolulu')
ONS.save!
OSS = Subregion.find_or_initialize_by(name: 'Oahu - South Shore', region: HI)
OSS.assign_attributes(sort_order: 10, timezone: 'Pacific/Honolulu')
OSS.save!
MNS = Subregion.find_or_initialize_by(name: 'Maui - North Shore', region: HI)
MNS.assign_attributes(sort_order: 15, timezone: 'Pacific/Honolulu')
MNS.save!
MNW = Subregion.find_or_initialize_by(name: 'Maui - Northwest', region: HI)
MNW.assign_attributes(sort_order: 20, timezone: 'Pacific/Honolulu')
MNW.save!
MSW = Subregion.find_or_initialize_by(name: 'Maui - Southwest', region: HI)
MSW.assign_attributes(sort_order: 25, timezone: 'Pacific/Honolulu')
MSW.save!

spots = [
  { subregion: LA,
    lon: -118.964,
    lat: 34.051,
    surfline_v1_id: 4203,
    surfline_v2_id: '5842041f4e65fad6a7708813',
    msw_id: 277,
    msw_slug: 'County-Line-Yerba-Buena-Beach',
    spitcast_id: 207,
    spitcast_slug: 'county-line-malibu-ca',
    name: 'County Line' },
  { subregion: LA,
    lon: -118.932943,
    lat: 34.043762,
    surfline_v1_id: 4953,
    surfline_v2_id: '5842041f4e65fad6a770893f',
    msw_id: 2642,
    msw_slug: 'Leo-Carrillo',
    spitcast_id: 638,
    spitcast_slug: 'leo-carrillo-malibu-ca',
    name: 'Leo Carillo' },
  { subregion: LA,
    lon: -118.91593,
    lat: 34.041956,
    msw_id: 2643,
    msw_slug: 'Zero-Nicholas-Canyon-County-Beach',
    name: 'Zeros' },
  { subregion: LA,
    lon: -118.823636154759,
    lat: 34.0151575961847,
    surfline_v1_id: 4949,
    surfline_v2_id: '5842041f4e65fad6a770893a',
    msw_id: 853,
    msw_slug: 'Zuma-Beach-County-Park',
    spitcast_id: 206,
    spitcast_slug: 'zuma-beach-malibu-ca',
    name: 'Zuma Beach' },
  { subregion: LA,
    lon: -118.804558744648,
    lat: 34.0016731994772,
    surfline_v1_id: 4947,
    surfline_v2_id: '5842041f4e65fad6a7708936',
    msw_id: 2610,
    msw_slug: 'Point-Dume',
    spitcast_id: 637,
    spitcast_slug: 'point-dume-malibu-ca',
    name: 'Point Dume' },
  { subregion: LA,
    lon: -118.677652,
    lat: 34.033415,
    surfline_v1_id: 4209,
    surfline_v2_id: '5842041f4e65fad6a7708817',
    msw_id: 4204,
    msw_slug: 'Malibu-First-Point',
    spitcast_id: 205,
    spitcast_slug: 'malibu-malibu-ca',
    name: 'Malibu' },
  { subregion: LA,
    lon: -118.5759544372,
    lat: 34.038649057421,
    surfline_v1_id: 4210,
    surfline_v2_id: '5842041f4e65fad6a770881e',
    msw_id: 279,
    msw_slug: 'Topanga-State-Beach',
    spitcast_id: 388,
    spitcast_slug: 'topanga-malibu-ca',
    name: 'Topanga' },
  { subregion: LA,
    lon: -118.553563183915,
    lat: 34.0378981296024,
    surfline_v1_id: 4883,
    surfline_v2_id: '5842041f4e65fad6a7708914',
    msw_id: 3673,
    msw_slug: 'Sunset-Blvd',
    spitcast_id: 387,
    spitcast_slug: 'sunset-pacific-palisades-ca',
    name: 'Sunset Blvd' },
  { subregion: LA,
    lon: -118.474263465162,
    lat: 33.9831612707837,
    surfline_v1_id: 4211,
    surfline_v2_id: '5842041f4e65fad6a7708819',
    msw_id: 2611,
    msw_slug: 'Venice-Beach',
    spitcast_id: 204,
    spitcast_slug: 'venice-venice-ca',
    name: 'Venice Breakwater' },
  { subregion: LA,
    lon: -118.420866962057,
    lat: 33.8985925532951,
    surfline_v1_id: 4900,
    surfline_v2_id: '5842041f4e65fad6a7708906',
    msw_id: 2677,
    msw_slug: 'El-Porto-Beach',
    spitcast_id: 402,
    spitcast_slug: 'el-porto-manhattan-beach-ca',
    name: 'El Porto' },
  { subregion: LA,
    lon: -118.411017510697,
    lat: 33.8796350643179,
    surfline_v1_id: 4901,
    surfline_v2_id: '5842041f4e65fad6a7708907',
    msw_id: 281,
    msw_slug: 'Manhattan-Beach',
    spitcast_id: 203,
    spitcast_slug: 'manhattan-beach-manhattan-beach-ca',
    name: 'Manhattan Beach' },
  { subregion: LA,
    lon: -118.407515128626,
    lat: 33.8720136817393,
    surfline_v1_id: 4902,
    surfline_v2_id: '5842041f4e65fad6a7708904',
    msw_id: 2607,
    msw_slug: 'Hermosa-Beach',
    spitcast_id: 202,
    spitcast_slug: 'hermosa-hermosa-beach-ca',
    name: 'Hermosa Beach' },
  { subregion: LA,
    lon: -118.400483774997,
    lat: 33.8504451986121,
    surfline_v1_id: 4912,
    surfline_v2_id: '5842041f4e65fad6a7708921',
    msw_id: 4208,
    msw_slug: 'Redondo-Beach-Breakwater',
    spitcast_id: 201,
    spitcast_slug: 'redondo-breakwater-redondo-beach-ca',
    name: 'Redondo Breakwall' },
  { subregion: LA,
    lon: -118.393319834265,
    lat: 33.8093082807436,
    surfline_v1_id: 4910,
    surfline_v2_id: '5842041f4e65fad6a7708920',
    msw_id: 2604,
    msw_slug: 'Torrance-Beach-Haggertys',
    spitcast_id: 200,
    spitcast_slug: 'torrance-beach-redondo-beach-ca',
    name: 'Torrance Beach/Haggertys' },
  { subregion: LA,
    lon: -118.407031669983,
    lat: 33.7929465628614,
    surfline_v1_id: 4936,
    surfline_v2_id: '5842041f4e65fad6a770892d',
    msw_id: 4207,
    msw_slug: 'Palos-Verdes-Cove',
    spitcast_id: 633,
    spitcast_slug: 'palos-verdes-cove-palos-verdes-estates-ca',
    name: 'Palos Verdes Cove' },
  { subregion: LA,
    lon: -118.426842847667,
    lat: 33.7720998680626,
    surfline_v1_id: 4935,
    surfline_v2_id: '5842041f4e65fad6a770892c',
    msw_id: 283,
    msw_slug: 'Lunada-Bay',
    name: 'Lunada Bay' },
  { subregion: SC,
    lon: -121.971690062891,
    lat: 36.9540876220453,
    surfline_v1_id: 4190,
    surfline_v2_id: '5842041f4e65fad6a7708807',
    msw_id: 644,
    msw_slug: 'Pleasure-Point',
    spitcast_id: 1,
    spitcast_slug: 'pleasure-point-santa-cruz-ca',
    name: 'Pleasure Point' },
  { subregion: SF,
    lon: -122.513476588314,
    lat: 37.7682565117962,
    surfline_v1_id: 4127,
    surfline_v2_id: '5842041f4e65fad6a77087f8',
    msw_id: 255,
    msw_slug: 'Ocean-Beach',
    spitcast_id: 117,
    spitcast_slug: 'south-ocean-beach-san-francisco-ca',
    name: 'Ocean Beach' },
  { subregion: PT,
    lon: -9.338022,
    lat: 38.681209,
    surfline_v1_id: 6064,
    surfline_v2_id: '5842041f4e65fad6a7708bc0',
    msw_id: 912,
    msw_slug: 'Carcavelos',
    name: 'Carcavelos' },
  { subregion: PT,
    lon: -9.2266,
    lat: 38.630405,
    surfline_v1_id: 44509,
    surfline_v2_id: '5842041f4e65fad6a7708e65',
    msw_id: 874,
    msw_slug: 'Costa-da-Caparica',
    name: 'Costa da Caparica' },
  { subregion: COL,
    lon: -103.962,
    lat: 18.853,
    surfline_v1_id: 59564,
    surfline_v2_id: '584204204e65fad6a770920d',
    msw_id: 333,
    msw_slug: 'Pascuales',
    name: 'Pascuales' },
  { subregion: GUR,
    lon: -101.749,
    lat: 17.794,
    surfline_v1_id: 59608,
    surfline_v2_id: '584204204e65fad6a770921f',
    msw_id: 1059,
    msw_slug: 'Manzanillo-Bay',
    name: 'Troncones' },
  { subregion: GUR,
    lon: -101.871,
    lat: 17.914,
    surfline_v1_id: 59606,
    surfline_v2_id: '584204204e65fad6a770921d',
    msw_id: 336,
    msw_slug: 'The-Ranch',
    name: 'The Ranch' },
  { subregion: GUR,
    lon: -101.774,
    lat: 17.836,
    surfline_v1_id: 59607,
    surfline_v2_id: '584204204e65fad6a770921e',
    msw_id: 838,
    msw_slug: 'La-Saladita',
    name: 'La Saladita' },
  { subregion: GUR,
    lon: -102.792,
    lat: 18.082,
    surfline_v1_id: 59604,
    surfline_v2_id: '584204204e65fad6a770921c',
    msw_id: 334,
    msw_slug: 'Rio-Nexpa',
    name: 'Rio Nexpa' },
  { subregion: NOC,
    lon: -118.107874753501,
    lat: 33.7377190285934,
    surfline_v1_id: 4217,
    surfline_v2_id: '5842041f4e65fad6a7708820',
    msw_id: 285,
    msw_slug: 'Seal-Beach-Pier',
    spitcast_id: 222,
    spitcast_slug: 'seal-beach-pier-seal-beach-ca',
    name: 'Seal Beach Pier' },
  { subregion: NOC,
    lon: -118.103408,
    lat: 33.736816,
    surfline_v1_id: 4865,
    surfline_v2_id: '5842041f4e65fad6a77088e4',
    msw_id: 2599,
    msw_slug: '13th-Street',
    name: '13th St Seal Beach' },
  { subregion: NOC,
    lon: -118.09080856603,
    lat: 33.7284858046428,
    surfline_v1_id: 4867,
    surfline_v2_id: '5842041f4e65fad6a77088e7',
    msw_id: 2594,
    msw_slug: 'Surfside-Jetty',
    spitcast_id: 602,
    spitcast_slug: 'surfside-jetty-north-coast-ca',
    name: 'Surfside Jetty' },
  { subregion: NOC,
    lon: -118.080226173689,
    lat: 33.7231577185346,
    surfline_v1_id: 4219,
    surfline_v2_id: '5842041f4e65fad6a7708822',
    msw_id: 4898,
    msw_slug: 'Anderson-St',
    spitcast_id: 603,
    spitcast_slug: 'anderson-st-north-coast-ca',
    name: 'Anderson St' },
  { subregion: NOC,
    lon: -118.040365824134,
    lat: 33.6853921593044,
    surfline_v1_id: 103685,
    surfline_v2_id: '584204204e65fad6a770998d',
    msw_id: 3797,
    msw_slug: 'Bolsa-Chica',
    spitcast_id: 604,
    spitcast_slug: 'bolsa-chica-huntington-beach-ca',
    name: 'Bolsa Chica' },
  { subregion: NOC,
    lon: -118.01901000164,
    lat: 33.6661562058152,
    surfline_v1_id: 4870,
    surfline_v2_id: '5842041f4e65fad6a77088ea',
    msw_id: 4039,
    msw_slug: 'Goldenwest',
    spitcast_id: 220,
    spitcast_slug: 'goldenwest-huntington-beach-ca',
    name: 'Goldenwest' },
  { subregion: NOC,
    lon: -118.014049033956,
    lat: 33.6639452812659,
    surfline_v1_id: 4871,
    surfline_v2_id: '5842041f4e65fad6a77088eb',
    msw_id: 4896,
    msw_slug: '17th-St',
    spitcast_id: 605,
    spitcast_slug: '17th-street-huntington-beach-ca',
    name: '17th St Huntington' },
  { subregion: NOC,
    lon: -118.005043340881,
    lat: 33.6552139815928,
    surfline_v1_id: 4223,
    surfline_v2_id: '5842041f4e65fad6a7708827',
    msw_id: 286,
    msw_slug: 'Huntington-Pier',
    spitcast_id: 221,
    spitcast_slug: 'huntington-pier-huntington-beach-ca',
    name: 'Huntington Pier' },
  { subregion: NOC,
    lon: -117.993221421263,
    lat: 33.6485165540874,
    surfline_v1_id: 4875,
    surfline_v2_id: '5842041f4e65fad6a77088ee',
    msw_id: 4895,
    msw_slug: 'Magnolia-St',
    spitcast_id: 643,
    spitcast_slug: 'huntington-beach-huntington-beach-ca',
    name: 'Huntington State Beach' },
  { subregion: NOC,
    lon: -117.959168,
    lat: 33.628085,
    surfline_v1_id: 103681,
    surfline_v2_id: '584204204e65fad6a770998c',
    msw_id: 2577,
    msw_slug: 'Santa-Ana-River-Jetties',
    spitcast_id: 606,
    spitcast_slug: 'santa-ana-river-jetties-newport-beach-ca',
    name: 'Santa Ana River Jetties' },
  { subregion: NOC,
    lon: -117.948767376086,
    lat: 33.6229055807335,
    surfline_v1_id: 43103,
    surfline_v2_id: '5842041f4e65fad6a7708e54',
    msw_id: 665,
    msw_slug: 'Newport-Beach',
    spitcast_id: 219,
    spitcast_slug: '56th-street-newport-beach-ca',
    name: '56th St Newport Beach' },
  { subregion: NOC,
    lon: -117.938811422113,
    lat: 33.6172275924874,
    surfline_v1_id: 4225,
    surfline_v2_id: '5a26dd690f87fe001a0c70dc',
    spitcast_id: 607,
    spitcast_slug: '40th-street-newport-beach-ca',
    name: '40th Street' },
  { subregion: NOC,
    lon: -117.936957653326,
    lat: 33.6153190345846,
    surfline_v1_id: 4226,
    surfline_v2_id: '5842041f4e65fad6a770882a',
    msw_id: 4683,
    msw_slug: '36th-St-Newport',
    spitcast_id: 608,
    spitcast_slug: '36th-street-newport-beach-ca',
    name: '36th Street' },
  { subregion: NOC,
    lon: -117.933626701894,
    lat: 33.6109583118254,
    surfline_v1_id: 53412,
    surfline_v2_id: '584204204e65fad6a7709115',
    msw_id: 2575,
    msw_slug: 'Blackies',
    spitcast_id: 651,
    spitcast_slug: 'blackies-newport-beach-ca',
    name: 'Blackies' },
  { subregion: NOC,
    lon: -117.930738451154,
    lat: 33.6066469200425,
    surfline_v1_id: 4227,
    surfline_v2_id: '5842041f4e65fad6a770882c',
    spitcast_id: 609,
    spitcast_slug: 'newport-pier-newport-beach-ca',
    name: 'Newport Pier' },
  { subregion: NOC,
    lon: -117.882342970408,
    lat: 33.5933899386699,
    surfline_v1_id: 4232,
    surfline_v2_id: '5842041f4e65fad6a770882b',
    msw_id: 287,
    msw_slug: 'The-Wedge',
    spitcast_id: 217,
    spitcast_slug: 'the-wedge-newport-beach-ca',
    name: 'The Wedge' },
  { subregion: NOC,
    lon: -117.875881,
    lat: 33.592468,
    surfline_v1_id: 4879,
    surfline_v2_id: '5842041f4e65fad6a77088f3',
    msw_id: 2579,
    msw_slug: 'Corona-Del-Mar-Jetty',
    name: 'Corona Del Mar' },
  { subregion: SOC,
    lon: -117.723302388099,
    lat: 33.4746650451478,
    surfline_v1_id: 4233,
    surfline_v2_id: '5842041f4e65fad6a770882e',
    msw_id: 289,
    msw_slug: 'Salt-Creek',
    spitcast_id: 214,
    spitcast_slug: 'salt-creek-dana-point-ca',
    name: 'Salt Creek' },
  { subregion: SOC,
    lon: -117.716886,
    lat: 33.466191,
    surfline_v1_id: 4849,
    surfline_v2_id: '5842041f4e65fad6a77088d5',
    msw_id: 4040,
    msw_slug: 'Strands-Point',
    name: 'Strands' },
  { subregion: SOC,
    lon: -117.688648571076,
    lat: 33.4603308582054,
    surfline_v1_id: 4848,
    surfline_v2_id: '5842041f4e65fad6a77088d7',
    msw_id: 2588,
    msw_slug: 'Doheny-State-Beach',
    spitcast_id: 213,
    spitcast_slug: 'doheny-dana-point-ca',
    name: 'Doheny' },
  { subregion: SOC,
    lon: -117.621267674113,
    lat: 33.4197319428865,
    msw_id: 290,
    msw_slug: 'San-Clemente-Pier',
    spitcast_id: 212,
    spitcast_slug: 'san-clemente-pier-san-clemente-ca',
    name: 'San Clemente Pier' },
  { subregion: SOC,
    lon: -117.618142936175,
    lat: 33.4159655824035,
    surfline_v1_id: 4235,
    surfline_v2_id: '5842041f4e65fad6a7708830',
    msw_id: 2570,
    msw_slug: 'T-Street-Trafalgar-Street',
    spitcast_id: 211,
    spitcast_slug: 't-street-san-clemente-ca',
    name: 'T Street' },
  { subregion: SOC,
    lon: -117.606199616021,
    lat: 33.4029799681431,
    surfline_v1_id: 4843,
    surfline_v2_id: '5842041f4e65fad6a77088cf',
    msw_id: 4900,
    msw_slug: 'San-Clemente-State-Beach',
    spitcast_id: 392,
    spitcast_slug: 'state-park-san-clemente-ca',
    name: 'San Clemente State Beach' },
  { subregion: SOC,
    lon: -117.598772149192,
    lat: 33.3906129925768,
    surfline_v1_id: 4737,
    surfline_v2_id: '5842041f4e65fad6a7708884',
    msw_id: 4899,
    msw_slug: 'Cottons',
    spitcast_id: 209,
    spitcast_slug: 'cottons-point-san-clemente-ca',
    name: 'Cottons' },
  { subregion: SOC,
    lon: -117.594451124026,
    lat: 33.3844763013776,
    surfline_v1_id: 4738,
    surfline_v2_id: '5842041f4e65fad6a7708887',
    spitcast_id: 623,
    spitcast_slug: 'upper-trestles-san-clemente-ca',
    name: 'Upper Trestles' },
  { subregion: SOC,
    lon: -117.588839746081,
    lat: 33.3821169550733,
    surfline_v1_id: 4740,
    surfline_v2_id: '5842041f4e65fad6a770888a',
    msw_id: 291,
    msw_slug: 'Trestles',
    spitcast_id: 208,
    spitcast_slug: 'lower-trestles-san-clemente-ca',
    name: 'Lower Trestles' },
  { subregion: SOC,
    lon: -117.57903433989,
    lat: 33.3801145547518,
    surfline_v1_id: 4741,
    surfline_v2_id: '5842041f4e65fad6a770888b',
    msw_id: 4901,
    msw_slug: 'Church',
    spitcast_id: 625,
    spitcast_slug: 'church-san-clemente-ca',
    name: 'Church' },
  { subregion: SOC,
    lon: -117.569129199378,
    lat: 33.3736054662039,
    surfline_v1_id: 4237,
    surfline_v2_id: '5842041f4e65fad6a7708831',
    msw_id: 4192,
    msw_slug: 'San-Onofre',
    spitcast_id: 239,
    spitcast_slug: 'san-onofre-san-clemente-ca',
    name: 'San Onofre' },
  { subregion: SOC,
    lon: -117.519084,
    lat: 33.343654,
    surfline_v1_id: 4736,
    surfline_v2_id: '5842041f4e65fad6a7708885',
    msw_id: 2600,
    msw_slug: 'Trails',
    spitcast_id: 614,
    spitcast_slug: 'trails-san-clemente-ca',
    name: 'Trails' },
  { subregion: NSD,
    lon: -117.395977021389,
    lat: 33.20422852759,
    surfline_v1_id: 4238,
    surfline_v2_id: '5842041f4e65fad6a7708832',
    msw_id: 4793,
    msw_slug: 'Oceanside-Harbor',
    spitcast_id: 238,
    spitcast_slug: 'oceanside-harbor-oceanside-ca',
    name: 'Oceanside Harbor' },
  { subregion: NSD,
    lon: -117.387187858031,
    lat: 33.1933870461609,
    surfline_v1_id: 68366,
    surfline_v2_id: '584204204e65fad6a7709435',
    msw_id: 664,
    msw_slug: 'Oceanside',
    spitcast_id: 594,
    spitcast_slug: 'oceanside-pier-oceanside-ca',
    name: 'Oceanside Pier' },
  { subregion: NSD,
    lon: -117.346796664119,
    lat: 33.147320395177,
    surfline_v1_id: 4242,
    surfline_v2_id: '5842041f4e65fad6a7708837',
    msw_id: 292,
    msw_slug: 'Carlsbad',
    spitcast_id: 237,
    spitcast_slug: 'tamarack-carlsbad-ca',
    name: 'Tamarack' },
  { subregion: NSD,
    lon: -117.336194882219,
    lat: 33.1287625038052,
    surfline_v1_id: 4775,
    surfline_v2_id: '5842041f4e65fad6a77088a6',
    spitcast_id: 597,
    spitcast_slug: 'terra-mar-carlsbad-ca',
    name: 'Terra Mar' },
  { subregion: NSD,
    lon: -117.314238172042,
    lat: 33.0870346652814,
    surfline_v1_id: 4773,
    surfline_v2_id: '5842041f4e65fad6a77088a5',
    msw_id: 1149,
    msw_slug: 'Ponto',
    spitcast_id: 236,
    spitcast_slug: 'ponto-carlsbad-ca',
    name: 'Ponto' },
  { subregion: NSD,
    lon: -117.310721142163,
    lat: 33.0754844673957,
    surfline_v1_id: 4771,
    surfline_v2_id: '5842041f4e65fad6a770889f',
    msw_id: 4564,
    msw_slug: 'Grandview',
    spitcast_id: 400,
    spitcast_slug: 'grandview-encinitas-ca',
    name: 'Grandview' },
  { subregion: NSD,
    lon: -117.305550079009,
    lat: 33.0635702120347,
    surfline_v1_id: 4772,
    surfline_v2_id: '5842041f4e65fad6a77088a0',
    msw_id: 4562,
    msw_slug: 'Beacons',
    spitcast_id: 235,
    spitcast_slug: 'beacons-encinitas-ca',
    name: 'Beacons' },
  { subregion: NSD,
    lon: -117.298203869191,
    lat: 33.0454422741039,
    surfline_v1_id: 4792,
    surfline_v2_id: '5842041f4e65fad6a77088b7',
    msw_id: 4563,
    msw_slug: 'Moonlight',
    spitcast_id: 401,
    spitcast_slug: 'd-street-encinitas-ca',
    name: 'D Street' },
  { subregion: NSD,
    lon: -117.295750253542,
    lat: 33.0344229310135,
    surfline_v1_id: 4789,
    surfline_v2_id: '5842041f4e65fad6a77088b4',
    msw_id: 293,
    msw_slug: 'Swamis',
    spitcast_id: 234,
    spitcast_slug: 'swamis-encinitas-ca',
    name: 'Swamis' },
  { subregion: NSD,
    lon: -117.283273919829,
    lat: 33.015419916751,
    surfline_v1_id: 4786,
    surfline_v2_id: '5842041f4e65fad6a77088b1',
    msw_id: 4663,
    msw_slug: 'Cardiff-Reef',
    spitcast_id: 232,
    spitcast_slug: 'cardiff-reef-cardiff-ca',
    name: 'Cardiff Reef' },
  { subregion: NSD,
    lon: -117.280247,
    lat: 33.001619,
    surfline_v1_id: 4787,
    surfline_v2_id: '5842041f4e65fad6a77088b3',
    msw_id: 294,
    msw_slug: 'Solana-Beach',
    spitcast_id: 231,
    spitcast_slug: 'seaside-reef-solana-beach-ca',
    name: 'Seaside Reef' },
  { subregion: NSD,
    lon: -117.271344,
    lat: 32.975133,
    surfline_v1_id: 4785,
    surfline_v2_id: '5842041f4e65fad6a77088b0',
    msw_id: 4682,
    msw_slug: 'North-Del-Mar',
    spitcast_id: 751,
    spitcast_slug: 'del-mar-rivermouth-del-mar-ca',
    name: 'Del Mar Rivermouth' },
  { subregion: NSD,
    lon: -117.269175357458,
    lat: 32.9586623258672,
    surfline_v1_id: 4783,
    surfline_v2_id: '5842041f4e65fad6a77088af',
    msw_id: 3707,
    msw_slug: 'Del-Mar',
    spitcast_id: 230,
    spitcast_slug: '15th-street-del-mar-ca',
    name: '15th Street Del Mar' },
  { subregion: SSD,
    lon: -117.261740740452,
    lat: 32.9331020835322,
    surfline_v1_id: 107951,
    surfline_v2_id: '584204204e65fad6a7709994',
    spitcast_id: 754,
    spitcast_slug: 'torrey-pines-state-beach-la-jolla-ca',
    name: 'Torrey Pines State Beach' },
  { subregion: SSD,
    lon: -117.257477932799,
    lat: 32.8887277619852,
    surfline_v1_id: 4245,
    surfline_v2_id: '5842041f4e65fad6a770883b',
    msw_id: 294,
    msw_slug: 'Torrey-Pines-Blacks-Beach',
    spitcast_id: 229,
    spitcast_slug: 'blacks-beach-la-jolla-ca',
    name: 'Blacks' },
  { subregion: SSD,
    lon: -117.256273652086,
    lat: 32.8665985093327,
    surfline_v1_id: 4246,
    surfline_v2_id: '5842041f4e65fad6a7708839',
    msw_id: 296,
    msw_slug: 'Scripps-Pier-La-Jolla',
    spitcast_id: 228,
    spitcast_slug: 'scripps-pier-la-jolla-ca',
    name: 'Scripps Pier' },
  { subregion: SSD,
    lon: -117.283514,
    lat: 32.838504,
    surfline_v1_id: 4247,
    surfline_v2_id: '5842041f4e65fad6a770883d',
    msw_id: 4210,
    msw_slug: 'Horseshoe',
    spitcast_id: 756,
    spitcast_slug: 'horseshoe-la-jolla-ca',
    name: 'Horseshoe' },
  { subregion: SSD,
    lon: -117.282043539579,
    lat: 32.8296653213721,
    surfline_v1_id: 4248,
    surfline_v2_id: '5842041f4e65fad6a770883c',
    msw_id: 4214,
    msw_slug: 'Windansea',
    spitcast_id: 227,
    spitcast_slug: 'windansea-la-jolla-ca',
    name: 'Windansea' },
  { subregion: SSD,
    lon: -117.273844294504,
    lat: 32.8134240499085,
    surfline_v1_id: 4249,
    surfline_v2_id: '5842041f4e65fad6a770883a',
    msw_id: 4209,
    msw_slug: 'Birdrock',
    spitcast_id: 398,
    spitcast_slug: 'bird-rock-la-jolla-ca',
    name: 'Bird Rock' },
  { subregion: SSD,
    lon: -117.265998972397,
    lat: 32.8069459175153,
    surfline_v1_id: 4804,
    surfline_v2_id: '5842041f4e65fad6a77088c4',
    spitcast_id: 399,
    spitcast_slug: 'tourmaline-san-diego-ca',
    name: 'Tourmaline' },
  { subregion: SSD,
    lon: -117.259602950346,
    lat: 32.7970295054355,
    surfline_v1_id: 4250,
    surfline_v2_id: '5842041f4e65fad6a7708841',
    msw_id: 663,
    msw_slug: 'Pacific-Beach',
    spitcast_id: 226,
    spitcast_slug: 'pacific-beach-san-diego-ca',
    name: 'Pacific Beach' },
  { subregion: SSD,
    lon: -117.254326482191,
    lat: 32.777929007486,
    surfline_v1_id: 4252,
    surfline_v2_id: '5842041f4e65fad6a7708842',
    msw_id: 297,
    msw_slug: 'Mission-Beach',
    spitcast_id: 397,
    spitcast_slug: 'mission-beach-san-diego-ca',
    name: 'Mission Beach' },
  { subregion: SSD,
    lon: -117.255341884911,
    lat: 32.7491518519641,
    surfline_v1_id: 4253,
    surfline_v2_id: '5842041f4e65fad6a770883f',
    msw_id: 4212,
    msw_slug: 'Ocean-beach',
    spitcast_id: 225,
    spitcast_slug: 'ocean-beach-pier-san-diego-ca',
    name: 'Ocean Beach Pier' },
  { subregion: SSD,
    lon: -117.257163271327,
    lat: 32.7189989047182,
    surfline_v1_id: 4254,
    surfline_v2_id: '5842041f4e65fad6a7708840',
    msw_id: 4211,
    msw_slug: 'Sunset-Cliffs',
    spitcast_id: 224,
    spitcast_slug: 'sunset-cliffs-san-diego-ca',
    name: 'Sunset Cliffs' },
  { subregion: SSD,
    lon: -117.134600796776,
    lat: 32.577928810608,
    surfline_v1_id: 4256,
    surfline_v2_id: '5842041f4e65fad6a7708844',
    msw_id: 3745,
    msw_slug: 'Imperial-Beach',
    spitcast_id: 223,
    spitcast_slug: 'imperial-beach-ca',
    name: 'Imperial Beach' },
  { subregion: SBVC,
    lon: -120.073313658504,
    lat: 34.4607278590271,
    surfline_v1_id: 4991,
    surfline_v2_id: '5842041f4e65fad6a7708961',
    msw_id: 2625,
    msw_slug: 'Refugio-State-Beach',
    spitcast_id: 620,
    spitcast_slug: 'refugio-goleta-ca',
    name: 'Refugio' },
  { subregion: SBVC,
    lon: -119.882143269301,
    lat: 34.4090791409269,
    surfline_v1_id: 4994,
    surfline_v2_id: '5842041f4e65fad6a7708964',
    msw_id: 268,
    msw_slug: 'Sands-Beach',
    spitcast_id: 182,
    spitcast_slug: 'sands-isla-vista-ca',
    name: 'Sands' },
  { subregion: SBVC,
    lon: -119.877763672798,
    lat: 34.4060390017938,
    surfline_v1_id: 4995,
    surfline_v2_id: '5842041f4e65fad6a7708962',
    msw_id: 4251,
    msw_slug: 'Devereux',
    spitcast_id: 181,
    spitcast_slug: 'devereux-isla-vista-ca',
    name: 'Coal Oil Point/Devereux' },
  { subregion: SBVC,
    lon: -119.842596370484,
    lat: 34.4048788892378,
    surfline_v1_id: 4997,
    surfline_v2_id: '5842041f4e65fad6a770896c',
    msw_id: 269,
    msw_slug: 'Campus-Point',
    spitcast_id: 179,
    spitcast_slug: 'campus-point-isla-vista-ca',
    name: 'Campus Point' },
  { subregion: SBVC,
    lon: -119.702089869972,
    lat: 34.3979688807858,
    surfline_v1_id: 145542,
    surfline_v2_id: '58bdf54982d034001252e3d5',
    msw_id: 270,
    msw_slug: 'Leadbetter-Beach',
    spitcast_id: 177,
    spitcast_slug: 'leadbetter-santa-barbara-ca',
    name: 'Leadbetter' },
  { subregion: SBVC,
    lon: 34.404613,
    lat: -119.687402,
    surfline_v1_id: 4998,
    surfline_v2_id: '5842041f4e65fad6a7708966',
    msw_id: 2629,
    msw_slug: 'Sandspit',
    name: 'Sandspit' },
  { subregion: SBVC,
    lon: 34.416038,
    lat: -119.636549,
    surfline_v1_id: 4999,
    surfline_v2_id: '5842041f4e65fad6a7708967',
    msw_id: 271,
    msw_slug: 'Hammonds-Reef',
    name: 'Hammonds' },
  { subregion: SBVC,
    lon: 34.391859,
    lat: -119.525699,
    surfline_v1_id: 5001,
    surfline_v2_id: '5842041f4e65fad6a770896e',
    msw_id: 2701,
    msw_slug: 'Tarpits-Carpinteria-State-Beach',
    name: 'Carpinteria/Tarpits' },
  { subregion: SBVC,
    lon: -119.477992904603,
    lat: 34.3725654297481,
    surfline_v1_id: 4197,
    surfline_v2_id: '5842041f4e65fad6a7708814',
    msw_id: 272,
    msw_slug: 'Rincon-Point',
    spitcast_id: 198,
    spitcast_slug: 'rincon-carpinteria-ca',
    name: 'Rincon' },
  { subregion: SBVC,
    lon: 34.355095,
    lat: -119.442182,
    surfline_v1_id: 4985,
    surfline_v2_id: '5842041f4e65fad6a770895a',
    msw_id: 2672,
    msw_slug: 'Little-Rincon-Mussel-Shoals',
    name: 'Mussel Shoals/Little Rincon' },
  { subregion: SBVC,
    lon: 34.31675,
    lat: -119.38924,
    surfline_v1_id: 4981,
    surfline_v2_id: '5842041f4e65fad6a7708957',
    msw_id: 274,
    msw_slug: 'Pitas-Point-Faria-County-Park',
    name: 'Pitas Point' },
  { subregion: SBVC,
    lon: -119.377375358257,
    lat: 34.3191767099386,
    surfline_v1_id: 49737,
    surfline_v2_id: '584204204e65fad6a770904d',
    spitcast_id: 193,
    spitcast_slug: 'mondos-ventura-ca',
    name: 'Mondos' },
  { subregion: SBVC,
    lon: 34.309334,
    lat: -119.358505,
    surfline_v1_id: 4989,
    surfline_v2_id: '5842041f4e65fad6a770895f',
    msw_id: 2644,
    msw_slug: 'Solimar-Reef-and-Beach',
    name: 'Solimar' },
  { subregion: SBVC,
    lon: -119.339878421031,
    lat: 34.2923374874949,
    surfline_v1_id: 4980,
    surfline_v2_id: '5842041f4e65fad6a7708959',
    msw_id: 2646,
    msw_slug: 'Emma-Wood',
    spitcast_id: 191,
    spitcast_slug: 'emma-wood-ventura-ca',
    name: 'Emma Wood' },
  { subregion: SBVC,
    lon: -119.300150838877,
    lat: 34.2730698693049,
    surfline_v1_id: 4200,
    surfline_v2_id: '584204214e65fad6a7709cfd',
    msw_id: 275,
    msw_slug: 'California-Street-C-Street',
    spitcast_id: 190,
    spitcast_slug: 'c-street-ventura-ca',
    name: 'C Street' },
  { subregion: SBVC,
    lon: -119.269073,
    lat: 34.244158,
    surfline_v1_id: 4201,
    surfline_v2_id: '5842041f4e65fad6a7708811',
    msw_id: 2632,
    msw_slug: 'New-Jetty-South-Jetty',
    spitcast_id: 189,
    spitcast_slug: 'south-jetty-ventura-ca',
    name: 'Ventura Harbor' },
  { subregion: SBVC,
    lon: 34.171836,
    lat: -119.237817,
    surfline_v1_id: 4968,
    surfline_v2_id: '5842041f4e65fad6a770894c',
    msw_id: 276,
    msw_slug: 'Silver-Strand',
    name: 'Oxnard' },
  { subregion: ONS,
    lon: -158.033,
    lat: 21.685,
    surfline_v1_id: 10833,
    surfline_v2_id: '5842041f4e65fad6a7708df4',
    msw_id: 659,
    msw_slug: 'Velzyland',
    name: 'Velzyland' },
  { subregion: ONS,
    lon: -158.042,
    lat: 21.679,
    surfline_v1_id: 4746,
    surfline_v2_id: '5842041f4e65fad6a770888d',
    msw_id: 657,
    msw_slug: 'Sunset',
    name: 'Sunset' },
  { subregion: ONS,
    lon: -158.0482006072,
    lat: 21.670550036401,
    surfline_v1_id: 4748,
    surfline_v2_id: '5842041f4e65fad6a770888e',
    msw_id: 658,
    msw_slug: 'Rocky-Point',
    name: 'Rocky Point' },
  { subregion: ONS,
    lon: -158.0541,
    lat: 21.6651,
    surfline_v1_id: 4750,
    surfline_v2_id: '5842041f4e65fad6a7708890',
    msw_id: 616,
    msw_slug: 'Pipeline-Backdoor',
    name: 'Pipeline' },
  { subregion: ONS,
    lon: -158.055,
    lat: 21.664,
    surfline_v1_id: 4752,
    surfline_v2_id: '5842041f4e65fad6a7708894',
    msw_id: 2233,
    msw_slug: 'Off-The-Wall',
    name: 'Off-The-Wall' },
  { subregion: ONS,
    lon: -158.057,
    lat: 21.662,
    surfline_v1_id: 4753,
    surfline_v2_id: '5842041f4e65fad6a7708892',
    msw_id: 2234,
    msw_slug: 'Rockpile-Heisler-Park',
    name: 'Rockpile' },
  { subregion: ONS,
    lon: -158.058,
    lat: 21.661,
    surfline_v1_id: 4754,
    surfline_v2_id: '5842041f4e65fad6a7708893',
    msw_id: 2226,
    msw_slug: 'Log-Cabins',
    name: 'Log Cabins' },
  { subregion: ONS,
    lon: -158.067,
    lat: 21.643,
    surfline_v1_id: 4755,
    surfline_v2_id: '5842041f4e65fad6a7708895',
    msw_id: 549,
    msw_slug: 'Waimea-Bay',
    name: 'Waimea Bay' },
  { subregion: ONS,
    lon: -158.088,
    lat: 21.62,
    surfline_v1_id: 4759,
    surfline_v2_id: '5842041f4e65fad6a7708898',
    msw_id: 3672,
    msw_slug: 'Laniakea',
    name: 'Laniakea' },
  { subregion: ONS,
    lon: -158.109,
    lat: 21.597,
    surfline_v1_id: 10834,
    surfline_v2_id: '5842041f4e65fad6a7708df5',
    msw_id: 660,
    msw_slug: 'Haleiwa',
    name: 'Haleiwa' },
  { subregion: OSS,
    lon: -158.107,
    lat: 21.295,
    surfline_v1_id: 10847,
    surfline_v2_id: '5842041f4e65fad6a7708dfe',
    msw_id: 3082,
    msw_slug: 'Barbers-Point',
    name: 'Barbers Point' },
  { subregion: OSS,
    lon: -157.845,
    lat: 21.28,
    surfline_v1_id: 5538,
    surfline_v2_id: '5842041f4e65fad6a7708b42',
    msw_id: 661,
    msw_slug: 'Ala-Moana',
    name: 'Ala Moana Bowls' },
  { subregion: OSS,
    lon: -157.8255,
    lat: 21.268,
    surfline_v1_id: 55536,
    surfline_v2_id: '584204204e65fad6a7709148',
    msw_id: 4916,
    msw_slug: 'Waikiki-Beach',
    name: 'Waikiki' },
  { subregion: OSS,
    lon: -157.826489266749,
    lat: 21.2729668197042,
    surfline_v1_id: 5531,
    surfline_v2_id: '5842041f4e65fad6a7708b36',
    msw_id: 662,
    msw_slug: 'Queens-Canoes-Waikiki',
    name: "Queen's" },
  { subregion: OSS,
    lon: -157.805,
    lat: 21.252,
    surfline_v1_id: 4760,
    surfline_v2_id: '5842041f4e65fad6a77088a2',
    msw_id: 4697,
    msw_slug: 'Diamond-Head',
    name: 'Diamond Head' },
  { subregion: MNS,
    lon: -156.463,
    lat: 20.904,
    surfline_v1_id: 10816,
    surfline_v2_id: '5842041f4e65fad6a7708de6',
    msw_id: 4927,
    name: 'Kahului Harbor' },
  { subregion: MNS,
    lon: -156.442,
    lat: 20.905,
    surfline_v1_id: 10813,
    surfline_v2_id: '5842041f4e65fad6a7708de5',
    msw_id: 4926,
    name: 'Kanaha' },
  { subregion: MNS,
    lon: -156.374,
    lat: 20.922,
    surfline_v1_id: 108155,
    surfline_v2_id: '584204204e65fad6a770999d',
    msw_id: 4925,
    name: 'Tavares Bay' },
  { subregion: MNS,
    lon: -156.359,
    lat: 20.9357,
    surfline_v1_id: 10817,
    surfline_v2_id: '5842041f4e65fad6a7708de8',
    msw_id: 1244,
    name: "Ho'okipa" },
  { subregion: MNS,
    lon: -156.356,
    lat: 20.9374,
    msw_id: 2785,
    name: 'Pavilions' },
  { subregion: MNS,
    lon: -156.298,
    lat: 20.945,
    surfline_v1_id: 10818,
    surfline_v2_id: '5842041f4e65fad6a7708de9',
    msw_id: 617,
    name: 'Peahi/Jaws' },
  { subregion: MNS,
    lon: -156.166,
    lat: 20.866,
    surfline_v1_id: 10819,
    surfline_v2_id: '5842041f4e65fad6a7708deb',
    msw_id: 4924,
    name: 'Honomanu Bay' },
  { subregion: MNS,
    lon: -155.983,
    lat: 20.76,
    surfline_v1_id: 10820,
    surfline_v2_id: '5842041f4e65fad6a7708dea',
    msw_id: 4923,
    name: 'Hana Bay' },
  { subregion: MNW,
    lon: -156.61,
    lat: 21.0228,
    surfline_v1_id: 10815,
    surfline_v2_id: '5842041f4e65fad6a7708de7',
    msw_id: 2782,
    name: 'Honokohau Bay' },
  { subregion: MNW,
    lon: -156.628,
    lat: 21.0239,
    msw_id: 1274,
    name: 'Windmills' },
  { subregion: MNW,
    lon: -156.641,
    lat: 21.0159,
    surfline_v1_id: 10814,
    surfline_v2_id: '5842041f4e65fad6a7708de4',
    msw_id: 697,
    name: 'Honolua Bay' },
  { subregion: MNW,
    lon: -156.668,
    lat: 20.9972,
    msw_id: 2780,
    name: 'Little Makaha' },
  { subregion: MNW,
    lon: -156.694,
    lat: 20.9468,
    surfline_v1_id: 10812,
    surfline_v2_id: '5842041f4e65fad6a7708de3',
    msw_id: 2966,
    name: 'Rainbows' },
  { subregion: MNW,
    lon: -156.6797,
    lat: 20.8705,
    surfline_v1_id: 5528,
    surfline_v2_id: '5842041f4e65fad6a7708b37',
    msw_id: 4287,
    name: 'Lahaina Harbor/Breakwall' },
  { subregion: MNW,
    lon: -156.624,
    lat: 20.808,
    surfline_v1_id: 10809,
    surfline_v2_id: '5842041f4e65fad6a7708de0',
    msw_id: 4928,
    name: 'Olowalu' },
  { subregion: MNW,
    lon: -156.511,
    lat: 20.7895,
    surfline_v1_id: 7443,
    surfline_v2_id: '5842041f4e65fad6a7708da5',
    msw_id: 618,
    name: "Ma'alaea Harbor" },
  { subregion: MSW,
    lon: -156.453,
    lat: 20.728,
    surfline_v1_id: 10810,
    surfline_v2_id: '5842041f4e65fad6a7708de1',
    msw_id: 4929,
    name: 'The Cove' },
  { subregion: MSW,
    lon: -156.4462,
    lat: 20.6412,
    msw_id: 5876,
    name: 'Oneuli Beach' },
  { subregion: MSW,
    lon: -156.4473,
    lat: 20.632,
    surfline_v1_id: 5520,
    surfline_v2_id: '5842041f4e65fad6a7708b2a',
    msw_id: 5875,
    name: 'Makena Beach' },
  { subregion: MSW,
    lon: -156.438,
    lat: 20.6124,
    surfline_v1_id: 5521,
    surfline_v2_id: '5842041f4e65fad6a7708b2b',
    msw_id: 3668,
    name: 'Aluhi Bay/Dumps' },
  { subregion: MSW,
    lon: -156.415,
    lat: 20.591,
    surfline_v1_id: 10811,
    surfline_v2_id: '5842041f4e65fad6a7708de2',
    msw_id: 4930,
    name: 'La Perouse Bay' },
]

ActiveRecord::Base.connection.schema_cache.clear!

spots.each do |spot_data|
  spot = Spot.find_or_initialize_by(name: spot_data[:name], subregion: spot_data[:subregion])
  spot.assign_attributes(spot_data)
  spot.save!
end
