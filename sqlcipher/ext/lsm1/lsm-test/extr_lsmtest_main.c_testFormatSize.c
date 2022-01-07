
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int i64 ;


 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int testFormatSize(char *aBuf, int nBuf, i64 nByte){
  int res;
  if( nByte<(1<<10) ){
    res = snprintf(aBuf, nBuf, "%d byte", (int)nByte);
  }else if( nByte<(1<<20) ){
    res = snprintf(aBuf, nBuf, "%dK", (int)(nByte/(1<<10)));
  }else{
    res = snprintf(aBuf, nBuf, "%dM", (int)(nByte/(1<<20)));
  }
  return res;
}
