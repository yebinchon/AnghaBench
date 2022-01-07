
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3 ;


 int SQLITE_OK ;
 int SQLITE_UTF8 ;
 int checkfreelist_function ;
 int readint_function ;
 int sqlite3_create_function (int *,char*,int,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int cflRegister(sqlite3 *db){
  int rc = sqlite3_create_function(
      db, "sqlite_readint32", -1, SQLITE_UTF8, 0, readint_function, 0, 0
  );
  if( rc!=SQLITE_OK ) return rc;
  rc = sqlite3_create_function(
      db, "checkfreelist", 1, SQLITE_UTF8, 0, checkfreelist_function, 0, 0
  );
  return rc;
}
