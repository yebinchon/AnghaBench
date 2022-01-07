
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Str ;


 int strPrintf (int *,char const*,char const*,...) ;

__attribute__((used)) static void strPrintfArray(
  Str *pStr,
  const char *zSep,
  const char *zFmt,
  char **az, int n
){
  int i;
  for(i=0; az[i] && (i<n || n<0); i++){
    if( i!=0 ) strPrintf(pStr, "%s", zSep);
    strPrintf(pStr, zFmt, az[i], az[i], az[i]);
  }
}
