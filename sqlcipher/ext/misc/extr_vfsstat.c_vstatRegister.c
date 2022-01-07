
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_api_routines ;
typedef int sqlite3 ;


 int VfsStatModule ;
 int sqlite3_create_module (int *,char*,int *,int ) ;

__attribute__((used)) static int vstatRegister(
  sqlite3 *db,
  char **pzErrMsg,
  const sqlite3_api_routines *pThunk
){
  return sqlite3_create_module(db, "vfsstat", &VfsStatModule, 0);
}
