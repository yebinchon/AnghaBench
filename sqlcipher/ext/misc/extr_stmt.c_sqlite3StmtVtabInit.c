
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3 ;


 int SQLITE_OK ;
 int sqlite3_create_module (int *,char*,int *,int ) ;
 int stmtModule ;

int sqlite3StmtVtabInit(sqlite3 *db){
  int rc = SQLITE_OK;

  rc = sqlite3_create_module(db, "sqlite_stmt", &stmtModule, 0);

  return rc;
}
