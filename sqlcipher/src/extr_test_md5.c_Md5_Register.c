
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_api_routines ;
typedef int sqlite3 ;


 int SQLITE_UTF8 ;
 int md5finalize ;
 int md5step ;
 int sqlite3_create_function (int *,char*,int,int ,int ,int ,int ,int ) ;
 int sqlite3_overload_function (int *,char*,int) ;

int Md5_Register(
  sqlite3 *db,
  char **pzErrMsg,
  const sqlite3_api_routines *pThunk
){
  int rc = sqlite3_create_function(db, "md5sum", -1, SQLITE_UTF8, 0, 0,
                                 md5step, md5finalize);
  sqlite3_overload_function(db, "md5sum", -1);
  return rc;
}
