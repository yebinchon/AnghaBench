
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sqlite3Fts3Dequote (char*) ;
 char* sqlite3_mprintf (char*,char const*) ;

__attribute__((used)) static int fts3IsSpecialColumn(
  const char *z,
  int *pnKey,
  char **pzValue
){
  char *zValue;
  const char *zCsr = z;

  while( *zCsr!='=' ){
    if( *zCsr=='\0' ) return 0;
    zCsr++;
  }

  *pnKey = (int)(zCsr-z);
  zValue = sqlite3_mprintf("%s", &zCsr[1]);
  if( zValue ){
    sqlite3Fts3Dequote(zValue);
  }
  *pzValue = zValue;
  return 1;
}
