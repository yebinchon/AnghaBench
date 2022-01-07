
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_api_routines ;
typedef int sqlite3 ;


 int SQLITE_ANY ;
 int SQLITE_EXTENSION_INIT2 (int const*) ;
 int cubeFunc ;
 int sqlite3_create_function (int *,char*,int,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int cube_init(
  sqlite3 *db,
  char **pzErrMsg,
  const sqlite3_api_routines *pApi
){
  SQLITE_EXTENSION_INIT2(pApi);
  sqlite3_create_function(db, "cube", 1, SQLITE_ANY, 0, cubeFunc, 0, 0);
  return 0;
}
