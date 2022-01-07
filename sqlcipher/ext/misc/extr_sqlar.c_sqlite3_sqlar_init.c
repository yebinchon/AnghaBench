
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_api_routines ;
typedef int sqlite3 ;


 int SQLITE_EXTENSION_INIT2 (int const*) ;
 int SQLITE_OK ;
 int SQLITE_UTF8 ;
 int sqlarCompressFunc ;
 int sqlarUncompressFunc ;
 int sqlite3_create_function (int *,char*,int,int ,int ,int ,int ,int ) ;

int sqlite3_sqlar_init(
  sqlite3 *db,
  char **pzErrMsg,
  const sqlite3_api_routines *pApi
){
  int rc = SQLITE_OK;
  SQLITE_EXTENSION_INIT2(pApi);
  (void)pzErrMsg;
  rc = sqlite3_create_function(db, "sqlar_compress", 1, SQLITE_UTF8, 0,
                               sqlarCompressFunc, 0, 0);
  if( rc==SQLITE_OK ){
    rc = sqlite3_create_function(db, "sqlar_uncompress", 2, SQLITE_UTF8, 0,
                                 sqlarUncompressFunc, 0, 0);
  }
  return rc;
}
