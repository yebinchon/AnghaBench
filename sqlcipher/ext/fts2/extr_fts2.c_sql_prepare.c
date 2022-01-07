
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_stmt ;
typedef int sqlite3 ;


 int TRACE (char*) ;
 int sqlite3_free (char*) ;
 int sqlite3_prepare_v2 (int *,char*,int,int **,int *) ;
 char* string_format (char const*,char const*,char const*) ;

__attribute__((used)) static int sql_prepare(sqlite3 *db, const char *zDb, const char *zName,
                       sqlite3_stmt **ppStmt, const char *zFormat){
  char *zCommand = string_format(zFormat, zDb, zName);
  int rc;
  TRACE(("FTS2 prepare: %s\n", zCommand));
  rc = sqlite3_prepare_v2(db, zCommand, -1, ppStmt, ((void*)0));
  sqlite3_free(zCommand);
  return rc;
}
