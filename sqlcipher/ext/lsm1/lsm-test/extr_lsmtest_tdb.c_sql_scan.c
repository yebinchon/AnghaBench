
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_stmt ;
typedef int TestDb ;
struct TYPE_2__ {int ** apScan; } ;
typedef TYPE_1__ SqlDb ;


 scalar_t__ SQLITE_ROW ;
 int SQLITE_STATIC ;
 int assert (int) ;
 int sqlite3_bind_blob (int *,int,void*,int,int ) ;
 scalar_t__ sqlite3_column_blob (int *,int) ;
 int sqlite3_column_bytes (int *,int) ;
 int sqlite3_reset (int *) ;
 scalar_t__ sqlite3_step (int *) ;

__attribute__((used)) static int sql_scan(
  TestDb *pTestDb,
  void *pCtx,
  int bReverse,
  void *pFirst, int nFirst,
  void *pLast, int nLast,
  void (*xCallback)(void *, void *, int , void *, int)
){
  SqlDb *pDb = (SqlDb *)pTestDb;
  sqlite3_stmt *pScan;

  assert( bReverse==1 || bReverse==0 );
  pScan = pDb->apScan[(pFirst==0) + (pLast==0)*2 + bReverse*4];

  if( pFirst ) sqlite3_bind_blob(pScan, 1, pFirst, nFirst, SQLITE_STATIC);
  if( pLast ) sqlite3_bind_blob(pScan, 2, pLast, nLast, SQLITE_STATIC);

  while( SQLITE_ROW==sqlite3_step(pScan) ){
    void *pKey; int nKey;
    void *pVal; int nVal;

    nKey = sqlite3_column_bytes(pScan, 0);
    pKey = (void *)sqlite3_column_blob(pScan, 0);
    nVal = sqlite3_column_bytes(pScan, 1);
    pVal = (void *)sqlite3_column_blob(pScan, 1);

    xCallback(pCtx, pKey, nKey, pVal, nVal);
  }
  return sqlite3_reset(pScan);
}
