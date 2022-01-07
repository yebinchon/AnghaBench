
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int totypeCompare2pow63(const char *zNum){
  int c = 0;
  int i;

  const char *pow63 = "922337203685477580";
  for(i=0; c==0 && i<18; i++){
    c = (zNum[i]-pow63[i])*10;
  }
  if( c==0 ){
    c = zNum[18] - '8';
  }
  return c;
}
