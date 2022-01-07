
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {int iUsedShmid; } ;
struct TYPE_15__ {scalar_t__ nTreeLimit; scalar_t__ bAutowork; int pWorkCtx; int (* xWork ) (TYPE_3__*,int ) ;scalar_t__ bDiscardOld; TYPE_2__ treehdr; TYPE_1__* pClient; } ;
typedef TYPE_3__ lsm_db ;
struct TYPE_13__ {int iId; } ;


 int LSM_LOCK_UNLOCK ;
 int LSM_LOCK_WRITER ;
 int LSM_OK ;
 int dbSetReadLock (TYPE_3__*,int ,int ) ;
 int lsmLogEnd (TYPE_3__*,int) ;
 int lsmShmLock (TYPE_3__*,int ,int ,int ) ;
 int lsmSortedAutoWork (TYPE_3__*,int) ;
 int lsmTreeEndTransaction (TYPE_3__*,int) ;
 int lsmTreeMakeOld (TYPE_3__*) ;
 scalar_t__ lsmTreeSize (TYPE_3__*) ;
 int stub1 (TYPE_3__*,int ) ;

int lsmFinishWriteTrans(lsm_db *pDb, int bCommit){
  int rc = LSM_OK;
  int bFlush = 0;

  lsmLogEnd(pDb, bCommit);
  if( rc==LSM_OK && bCommit && lsmTreeSize(pDb)>pDb->nTreeLimit ){
    bFlush = 1;
    lsmTreeMakeOld(pDb);
  }
  lsmTreeEndTransaction(pDb, bCommit);

  if( rc==LSM_OK ){
    if( bFlush && pDb->bAutowork ){
      rc = lsmSortedAutoWork(pDb, 1);
    }else if( bCommit && pDb->bDiscardOld ){
      rc = dbSetReadLock(pDb, pDb->pClient->iId, pDb->treehdr.iUsedShmid);
    }
  }
  pDb->bDiscardOld = 0;
  lsmShmLock(pDb, LSM_LOCK_WRITER, LSM_LOCK_UNLOCK, 0);

  if( bFlush && pDb->bAutowork==0 && pDb->xWork ){
    pDb->xWork(pDb, pDb->pWorkCtx);
  }
  return rc;
}
