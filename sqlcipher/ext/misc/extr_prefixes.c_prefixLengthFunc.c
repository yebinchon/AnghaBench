
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_context ;


 int sqlite3_result_int (int *,int) ;
 int sqlite3_value_bytes (int *) ;
 unsigned char* sqlite3_value_text (int *) ;

__attribute__((used)) static void prefixLengthFunc(
  sqlite3_context *ctx,
  int nVal,
  sqlite3_value **apVal
){
  int nByte;
  int nRet = 0;
  const unsigned char *zL = sqlite3_value_text(apVal[0]);
  const unsigned char *zR = sqlite3_value_text(apVal[1]);
  int nL = sqlite3_value_bytes(apVal[0]);
  int nR = sqlite3_value_bytes(apVal[1]);
  int i;

  nByte = (nL > nR ? nL : nR);
  for(i=0; i<nByte; i++){
    if( zL[i]!=zR[i] ) break;
    if( (zL[i] & 0xC0)!=0x80 ) nRet++;
  }

  if( (zL[i] & 0xC0)==0x80 ) nRet--;
  sqlite3_result_int(ctx, nRet);
}
