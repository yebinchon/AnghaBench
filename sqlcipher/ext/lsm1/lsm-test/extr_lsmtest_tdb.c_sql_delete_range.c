
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TestDb ;
struct TYPE_2__ {int pDeleteRange; } ;
typedef TYPE_1__ SqlDb ;


 int SQLITE_STATIC ;
 int sqlite3_bind_blob (int ,int,void*,int,int ) ;
 int sqlite3_reset (int ) ;
 int sqlite3_step (int ) ;

__attribute__((used)) static int sql_delete_range(
  TestDb *pTestDb,
  void *pKey1, int nKey1,
  void *pKey2, int nKey2
){
  SqlDb *pDb = (SqlDb *)pTestDb;
  sqlite3_bind_blob(pDb->pDeleteRange, 1, pKey1, nKey1, SQLITE_STATIC);
  sqlite3_bind_blob(pDb->pDeleteRange, 2, pKey2, nKey2, SQLITE_STATIC);
  sqlite3_step(pDb->pDeleteRange);
  return sqlite3_reset(pDb->pDeleteRange);
}
