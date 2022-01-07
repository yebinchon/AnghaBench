
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_api_routines ;
typedef int sqlite3 ;


 int SQLITE_ERROR ;
 int SQLITE_EXTENSION_INIT2 (int const*) ;
 int SQLITE_OK ;
 int seriesModule ;
 int sqlite3_create_module (int *,char*,int *,int ) ;
 int sqlite3_libversion_number () ;
 char* sqlite3_mprintf (char*) ;

int sqlite3_series_init(
  sqlite3 *db,
  char **pzErrMsg,
  const sqlite3_api_routines *pApi
){
  int rc = SQLITE_OK;
  SQLITE_EXTENSION_INIT2(pApi);

  if( sqlite3_libversion_number()<3008012 ){
    *pzErrMsg = sqlite3_mprintf(
        "generate_series() requires SQLite 3.8.12 or later");
    return SQLITE_ERROR;
  }
  rc = sqlite3_create_module(db, "generate_series", &seriesModule, 0);

  return rc;
}
