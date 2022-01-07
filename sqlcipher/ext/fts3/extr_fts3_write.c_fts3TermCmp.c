
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MIN (int,int) ;
 int memcmp (char const*,char const*,int) ;

__attribute__((used)) static int fts3TermCmp(
  const char *zLhs, int nLhs,
  const char *zRhs, int nRhs
){
  int nCmp = MIN(nLhs, nRhs);
  int res;

  res = memcmp(zLhs, zRhs, nCmp);
  if( res==0 ) res = nLhs - nRhs;

  return res;
}
