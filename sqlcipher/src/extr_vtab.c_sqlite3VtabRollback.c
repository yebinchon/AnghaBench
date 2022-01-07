
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3 ;


 int SQLITE_OK ;
 int callFinaliser (int *,int ) ;
 int offsetof (int ,int ) ;
 int sqlite3_module ;
 int xRollback ;

int sqlite3VtabRollback(sqlite3 *db){
  callFinaliser(db, offsetof(sqlite3_module,xRollback));
  return SQLITE_OK;
}
