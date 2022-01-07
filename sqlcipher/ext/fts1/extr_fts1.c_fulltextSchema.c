
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,...) ;

__attribute__((used)) static char *fulltextSchema(
  int nColumn,
  const char *const* azColumn,
  const char *zTableName
){
  int i;
  char *zSchema, *zNext;
  const char *zSep = "(";
  zSchema = sqlite3_mprintf("CREATE TABLE x");
  for(i=0; i<nColumn; i++){
    zNext = sqlite3_mprintf("%s%s%Q", zSchema, zSep, azColumn[i]);
    sqlite3_free(zSchema);
    zSchema = zNext;
    zSep = ",";
  }
  zNext = sqlite3_mprintf("%s,%Q)", zSchema, zTableName);
  sqlite3_free(zSchema);
  return zNext;
}
