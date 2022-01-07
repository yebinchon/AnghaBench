
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int sqlite3 ;
struct TYPE_4__ {scalar_t__ pTmpSpace; int pageSize; int walSyncFlags; int pBusyHandlerArg; int xBusyHandler; scalar_t__ pWal; } ;
typedef TYPE_1__ Pager ;


 int SQLITE_CHECKPOINT_PASSIVE ;
 int SQLITE_OK ;
 int sqlite3PagerResetLockTimeout (TYPE_1__*) ;
 int sqlite3WalCheckpoint (scalar_t__,int *,int,int ,int ,int ,int ,int *,int*,int*) ;

int sqlite3PagerCheckpoint(
  Pager *pPager,
  sqlite3 *db,
  int eMode,
  int *pnLog,
  int *pnCkpt
){
  int rc = SQLITE_OK;
  if( pPager->pWal ){
    rc = sqlite3WalCheckpoint(pPager->pWal, db, eMode,
        (eMode==SQLITE_CHECKPOINT_PASSIVE ? 0 : pPager->xBusyHandler),
        pPager->pBusyHandlerArg,
        pPager->walSyncFlags, pPager->pageSize, (u8 *)pPager->pTmpSpace,
        pnLog, pnCkpt
    );
    sqlite3PagerResetLockTimeout(pPager);
  }
  return rc;
}
