
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TestDb ;
struct TYPE_2__ {scalar_t__ aAlloc; int db; int * apScan; int pFetch; int pDeleteRange; int pDelete; int pInsert; } ;
typedef TYPE_1__ SqlDb ;


 int SQLITE_OK ;
 int free (char*) ;
 int sqlite3_close (int ) ;
 int sqlite3_finalize (int ) ;

__attribute__((used)) static int sql_close(TestDb *pTestDb){
  SqlDb *pDb = (SqlDb *)pTestDb;
  sqlite3_finalize(pDb->pInsert);
  sqlite3_finalize(pDb->pDelete);
  sqlite3_finalize(pDb->pDeleteRange);
  sqlite3_finalize(pDb->pFetch);
  sqlite3_finalize(pDb->apScan[0]);
  sqlite3_finalize(pDb->apScan[1]);
  sqlite3_finalize(pDb->apScan[2]);
  sqlite3_finalize(pDb->apScan[3]);
  sqlite3_finalize(pDb->apScan[4]);
  sqlite3_finalize(pDb->apScan[5]);
  sqlite3_finalize(pDb->apScan[6]);
  sqlite3_finalize(pDb->apScan[7]);
  sqlite3_close(pDb->db);
  free((char *)pDb->aAlloc);
  free((char *)pDb);
  return SQLITE_OK;
}
