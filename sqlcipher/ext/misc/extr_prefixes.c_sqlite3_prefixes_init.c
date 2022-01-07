
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_api_routines ;
typedef int sqlite3 ;


 int SQLITE_EXTENSION_INIT2 (int const*) ;
 int SQLITE_OK ;
 int SQLITE_UTF8 ;
 int prefixLengthFunc ;
 int prefixesModule ;
 int sqlite3_create_function (int *,char*,int,int ,int ,int ,int ,int ) ;
 int sqlite3_create_module (int *,char*,int *,int ) ;

int sqlite3_prefixes_init(
  sqlite3 *db,
  char **pzErrMsg,
  const sqlite3_api_routines *pApi
){
  int rc = SQLITE_OK;
  SQLITE_EXTENSION_INIT2(pApi);
  rc = sqlite3_create_module(db, "prefixes", &prefixesModule, 0);
  if( rc==SQLITE_OK ){
    rc = sqlite3_create_function(
        db, "prefix_length", 2, SQLITE_UTF8, 0, prefixLengthFunc, 0, 0
    );
  }
  return rc;
}
