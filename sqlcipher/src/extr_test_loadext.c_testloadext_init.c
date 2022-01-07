
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_api_routines ;
typedef int sqlite3 ;


 int SQLITE_ANY ;
 int SQLITE_ERROR ;
 int SQLITE_EXTENSION_INIT2 (int const*) ;
 int SQLITE_OK ;
 int halfFunc ;
 int sqlite3_create_function (int *,char*,int,int ,int ,int ,int ,int ) ;
 int statusFunc ;

int testloadext_init(
  sqlite3 *db,
  char **pzErrMsg,
  const sqlite3_api_routines *pApi
){
  int nErr = 0;
  SQLITE_EXTENSION_INIT2(pApi);
  nErr |= sqlite3_create_function(db, "half", 1, SQLITE_ANY, 0, halfFunc, 0, 0);
  nErr |= sqlite3_create_function(db, "sqlite3_status", 1, SQLITE_ANY, 0,
                          statusFunc, 0, 0);
  nErr |= sqlite3_create_function(db, "sqlite3_status", 2, SQLITE_ANY, 0,
                          statusFunc, 0, 0);
  return nErr ? SQLITE_ERROR : SQLITE_OK;
}
