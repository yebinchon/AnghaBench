
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int TestDb ;
struct TYPE_2__ {int nAlloc; int pFetch; int * aAlloc; } ;
typedef TYPE_1__ SqlDb ;


 int LSM_OK ;
 int SQLITE_ROW ;
 int SQLITE_STATIC ;
 int assert (int) ;
 int free (int *) ;
 scalar_t__ malloc (int) ;
 int memcpy (int *,int *,int) ;
 int sqlite3_bind_blob (int ,int,void*,int,int ) ;
 scalar_t__ sqlite3_column_blob (int ,int ) ;
 int sqlite3_column_bytes (int ,int ) ;
 int sqlite3_reset (int ) ;
 int sqlite3_step (int ) ;

__attribute__((used)) static int sql_fetch(
  TestDb *pTestDb,
  void *pKey,
  int nKey,
  void **ppVal,
  int *pnVal
){
  SqlDb *pDb = (SqlDb *)pTestDb;
  int rc;

  sqlite3_reset(pDb->pFetch);
  if( pKey==0 ){
    assert( ppVal==0 );
    assert( pnVal==0 );
    return LSM_OK;
  }

  sqlite3_bind_blob(pDb->pFetch, 1, pKey, nKey, SQLITE_STATIC);
  rc = sqlite3_step(pDb->pFetch);
  if( rc==SQLITE_ROW ){
    int nVal = sqlite3_column_bytes(pDb->pFetch, 0);
    u8 *aVal = (void *)sqlite3_column_blob(pDb->pFetch, 0);

    if( nVal>pDb->nAlloc ){
      free(pDb->aAlloc);
      pDb->aAlloc = (u8 *)malloc(nVal*2);
      pDb->nAlloc = nVal*2;
    }
    memcpy(pDb->aAlloc, aVal, nVal);
    *pnVal = nVal;
    *ppVal = (void *)pDb->aAlloc;
  }else{
    *pnVal = -1;
    *ppVal = 0;
  }

  rc = sqlite3_reset(pDb->pFetch);
  return rc;
}
