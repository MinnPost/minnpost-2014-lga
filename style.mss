#2014lga {
  marker-width:6;
  //marker-fill:#f45;
  marker-line-color:#888;
  marker-opacity: .8;
  marker-allow-overlap:true;
}

#2014lga {
  [zoom = 6][mpclga = 0] {marker-width:1;}    //area = 1pi
  [zoom = 6][mpclga > 0] {marker-width:5.65;} //area = 7.98pi
  [zoom = 6][mpclga > 200] {marker-width:8;}  //area = 16pi
  [zoom = 6][mpclga > 400] {marker-width:11.3;} //area = 32pi
  [zoom = 6][mpclga > 600] {marker-width:13.9;} //area = 48pi
  
  [zoom = 7][mpclga = 0] {marker-width:2;} //area = 7.98pi
  [zoom = 7][mpclga > 0] {marker-width:8;} //area = 16pi
  [zoom = 7][mpclga > 200] {marker-width:11.3;} //area = 32pi
  [zoom = 7][mpclga > 400] {marker-width:16;} //area = 64pi
  [zoom = 7][mpclga > 600] {marker-width:19.6;} //area = 96pi
  
  [zoom = 8][mpclga = 0] {marker-width:4;}  //area = 16pi
  [zoom = 8][mpclga > 0] {marker-width:11.3;} //area = 32pi
  [zoom = 8][mpclga > 200] {marker-width:16;} //area = 64pi
  [zoom = 8][mpclga > 400] {marker-width:22.6;} //area = 127.7pi
  [zoom = 8][mpclga > 600] {marker-width:27.7;} //area = 192pi
  
  [zoom = 9][mpclga = 0] {marker-width:6;}  //area = 32pi
  [zoom = 9][mpclga > 0] {marker-width:16;} //area = 64pi
  [zoom = 9][mpclga > 200] {marker-width:22.6;} //area = 127.7pi
  [zoom = 9][mpclga > 400] {marker-width:32;} //area = 256pi
  [zoom = 9][mpclga > 600] {marker-width:39.2;} //area = 384pi
  
  [Population > 0] {marker-fill: #E41A1C;}
  [Population > 2499] {marker-fill: #377EB8;}
  [Population > 10000] {marker-fill: #4DAF4A;}
}