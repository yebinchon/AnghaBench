
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char const*,int) ;

__attribute__((used)) static int testParseOption(
  const char **pzIn,
  const char **pzOpt,
  const char **pzArg,
  char *pSpace
){
  const char *p = *pzIn;
  const char *pStart;
  int n;

  char *pOut = pSpace;

  while( *p==' ' ) p++;
  pStart = p;
  while( *p && *p!='=' ) p++;
  if( *p==0 ) return 1;

  n = (p - pStart);
  memcpy(pOut, pStart, n);
  *pzOpt = pOut;
  pOut += n;
  *pOut++ = '\0';

  p++;
  pStart = p;
  while( *p && *p!=' ' ) p++;
  n = (p - pStart);

  memcpy(pOut, pStart, n);
  *pzArg = pOut;
  pOut += n;
  *pOut++ = '\0';

  *pzIn = p;
  return 0;
}
