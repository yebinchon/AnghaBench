
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,...) ;

__attribute__((used)) static void printBytes(
  unsigned char *aData,
  unsigned char *aStart,
  int nByte
){
  int j;
  printf(" %03x: ", (int)(aStart-aData));
  for(j=0; j<9; j++){
    if( j>=nByte ){
      printf("   ");
    }else{
      printf("%02x ", aStart[j]);
    }
  }
}
