
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TestDb ;
struct TYPE_2__ {int pInsert; } ;
typedef TYPE_1__ SqlDb ;


 int SQLITE_STATIC ;
 int sqlite3_bind_blob (int ,int,void*,int,int ) ;
 int sqlite3_reset (int ) ;
 int sqlite3_step (int ) ;

__attribute__((used)) static int sql_write(
  TestDb *pTestDb,
  void *pKey,
  int nKey,
  void *pVal,
  int nVal
){
  SqlDb *pDb = (SqlDb *)pTestDb;
  sqlite3_bind_blob(pDb->pInsert, 1, pKey, nKey, SQLITE_STATIC);
  sqlite3_bind_blob(pDb->pInsert, 2, pVal, nVal, SQLITE_STATIC);
  sqlite3_step(pDb->pInsert);
  return sqlite3_reset(pDb->pInsert);
}
