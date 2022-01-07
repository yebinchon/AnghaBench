
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_api_routines ;
typedef int sqlite3 ;


 int SQLITE_EXTENSION_INIT2 (int const*) ;
 int SQLITE_OK ;
 int SQLITE_UTF8 ;
 int fsdirRegister (int *) ;
 int lsModeFunc ;
 int readfileFunc ;
 int sqlite3_create_function (int *,char*,int,int ,int ,int ,int ,int ) ;
 int writefileFunc ;

int sqlite3_fileio_init(
  sqlite3 *db,
  char **pzErrMsg,
  const sqlite3_api_routines *pApi
){
  int rc = SQLITE_OK;
  SQLITE_EXTENSION_INIT2(pApi);
  (void)pzErrMsg;
  rc = sqlite3_create_function(db, "readfile", 1, SQLITE_UTF8, 0,
                               readfileFunc, 0, 0);
  if( rc==SQLITE_OK ){
    rc = sqlite3_create_function(db, "writefile", -1, SQLITE_UTF8, 0,
                                 writefileFunc, 0, 0);
  }
  if( rc==SQLITE_OK ){
    rc = sqlite3_create_function(db, "lsmode", 1, SQLITE_UTF8, 0,
                                 lsModeFunc, 0, 0);
  }
  if( rc==SQLITE_OK ){
    rc = fsdirRegister(db);
  }
  return rc;
}
