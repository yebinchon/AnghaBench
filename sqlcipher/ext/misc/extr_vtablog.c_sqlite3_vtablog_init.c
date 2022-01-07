
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_api_routines ;
typedef int sqlite3 ;


 int SQLITE_EXTENSION_INIT2 (int const*) ;
 int sqlite3_create_module (int *,char*,int *,int ) ;
 int vtablogModule ;

int sqlite3_vtablog_init(
  sqlite3 *db,
  char **pzErrMsg,
  const sqlite3_api_routines *pApi
){
  int rc;
  SQLITE_EXTENSION_INIT2(pApi);
  rc = sqlite3_create_module(db, "vtablog", &vtablogModule, 0);
  return rc;
}
