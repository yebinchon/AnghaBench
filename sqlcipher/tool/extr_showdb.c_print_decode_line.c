
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char*,char const*) ;
 int sprintf (char*,char*,...) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void print_decode_line(
  unsigned char *aData,
  int ofst, int nByte,
  const char *zMsg
){
  int i, j;
  int val = aData[ofst];
  char zBuf[100];
  sprintf(zBuf, " %03x: %02x", ofst, aData[ofst]);
  i = (int)strlen(zBuf);
  for(j=1; j<4; j++){
    if( j>=nByte ){
      sprintf(&zBuf[i], "   ");
    }else{
      sprintf(&zBuf[i], " %02x", aData[ofst+j]);
      val = val*256 + aData[ofst+j];
    }
    i += (int)strlen(&zBuf[i]);
  }
  sprintf(&zBuf[i], "   %9d", val);
  printf("%s  %s\n", zBuf, zMsg);
}
