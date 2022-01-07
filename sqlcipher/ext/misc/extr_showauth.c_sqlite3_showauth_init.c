
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_api_routines ;
typedef int sqlite3 ;


 int SQLITE_EXTENSION_INIT2 (int const*) ;
 int SQLITE_OK ;
 int authCallback ;
 int sqlite3_set_authorizer (int *,int ,int ) ;

int sqlite3_showauth_init(
  sqlite3 *db,
  char **pzErrMsg,
  const sqlite3_api_routines *pApi
){
  int rc = SQLITE_OK;
  SQLITE_EXTENSION_INIT2(pApi);
  (void)pzErrMsg;
  rc = sqlite3_set_authorizer(db, authCallback, 0);
  return rc;
}
