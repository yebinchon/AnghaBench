
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ sqlite3Fts5IsBareword (char const) ;

__attribute__((used)) static const char *fts5ConfigSkipBareword(const char *pIn){
  const char *p = pIn;
  while ( sqlite3Fts5IsBareword(*p) ) p++;
  if( p==pIn ) p = 0;
  return p;
}
