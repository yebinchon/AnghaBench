
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_22__ {int nAutockpt; scalar_t__ nTransOpen; scalar_t__ nMaxFreelist; TYPE_5__* pWorker; TYPE_1__* pShmhdr; } ;
typedef TYPE_4__ lsm_db ;
struct TYPE_20__ {scalar_t__ nEntry; } ;
struct TYPE_23__ {TYPE_3__* pLevel; TYPE_2__ freelist; } ;
struct TYPE_21__ {scalar_t__ nRight; scalar_t__ pNext; } ;
struct TYPE_19__ {int aSnap1; } ;
typedef TYPE_5__ Snapshot ;


 int LSM_BUSY ;
 int LSM_MAX (int,int ) ;
 scalar_t__ LSM_MIN (int,int) ;
 int LSM_OK ;
 int TREE_OLD ;
 int assert (int) ;
 int lsmBeginWork (TYPE_4__*) ;
 scalar_t__ lsmCheckpointNWrite (int ,int ) ;
 int lsmCheckpointPgsz (int ) ;
 int lsmCheckpointSynced (TYPE_4__*,int ,int ,scalar_t__*) ;
 scalar_t__ lsmDatabaseFull (TYPE_4__*) ;
 int lsmFinishWork (TYPE_4__*,int ,int*) ;
 int lsmSaveWorker (TYPE_4__*,int) ;
 int lsmTreeDiscardOld (TYPE_4__*) ;
 int lsmTreeLoadHeader (TYPE_4__*,int ) ;
 scalar_t__ sortedDbIsFull (TYPE_4__*) ;
 int sortedNewFreelistOnly (TYPE_4__*) ;
 int sortedNewToplevel (TYPE_4__*,int ,int*) ;
 scalar_t__ sortedTreeHasOld (TYPE_4__*,int*) ;
 int sortedWork (TYPE_4__*,int,int,int,int*) ;

__attribute__((used)) static int doLsmSingleWork(
  lsm_db *pDb,
  int bShutdown,
  int nMerge,
  int nPage,
  int *pnWrite,
  int *pbCkpt
){
  Snapshot *pWorker;
  int rc = LSM_OK;
  int bDirty = 0;
  int nMax = nPage;
  int nRem = nPage;
  int bCkpt = 0;

  assert( nPage>0 );



  assert( pDb->pWorker==0 );
  rc = lsmBeginWork(pDb);
  if( rc!=LSM_OK ) return rc;
  pWorker = pDb->pWorker;




  if( bShutdown==0 && pDb->nAutockpt ){
    u32 nSync;
    u32 nUnsync;
    int nPgsz;

    lsmCheckpointSynced(pDb, 0, 0, &nSync);
    nUnsync = lsmCheckpointNWrite(pDb->pShmhdr->aSnap1, 0);
    nPgsz = lsmCheckpointPgsz(pDb->pShmhdr->aSnap1);

    nMax = (int)LSM_MIN(nMax, (pDb->nAutockpt/nPgsz) - (int)(nUnsync-nSync));
    if( nMax<nRem ){
      bCkpt = 1;
      nRem = LSM_MAX(nMax, 0);
    }
  }



  if( pDb->nTransOpen==0 ){
    rc = lsmTreeLoadHeader(pDb, 0);
  }
  if( sortedTreeHasOld(pDb, &rc) ){




    if( sortedDbIsFull(pDb) ){
      int nPg = 0;
      rc = sortedWork(pDb, nRem, nMerge, 1, &nPg);
      nRem -= nPg;
      assert( rc!=LSM_OK || nRem<=0 || !sortedDbIsFull(pDb) );
      bDirty = 1;
    }

    if( rc==LSM_OK && nRem>0 ){
      int nPg = 0;
      rc = sortedNewToplevel(pDb, TREE_OLD, &nPg);
      nRem -= nPg;
      if( rc==LSM_OK ){
        if( pDb->nTransOpen>0 ){
          lsmTreeDiscardOld(pDb);
        }
        rc = lsmSaveWorker(pDb, 1);
        bDirty = 0;
      }
    }
  }


  if( rc==LSM_OK && nRem>0 && bShutdown==0 ){
    int nPg = 0;
    rc = sortedWork(pDb, nRem, nMerge, 0, &nPg);
    nRem -= nPg;
    if( nPg ) bDirty = 1;
  }



  if( rc==LSM_OK && pDb->pWorker->freelist.nEntry > pDb->nMaxFreelist ){
    while( rc==LSM_OK && lsmDatabaseFull(pDb) ){
      int nPg = 0;
      rc = sortedWork(pDb, 16, nMerge, 1, &nPg);
      nRem -= nPg;
    }
    if( rc==LSM_OK ){
      rc = sortedNewFreelistOnly(pDb);
    }
    bDirty = 1;
  }

  if( rc==LSM_OK ){
    *pnWrite = (nMax - nRem);
    *pbCkpt = (bCkpt && nRem<=0);
    if( nMerge==1 && pDb->nAutockpt>0 && *pnWrite>0
     && pWorker->pLevel
     && pWorker->pLevel->nRight==0
     && pWorker->pLevel->pNext==0
    ){
      *pbCkpt = 1;
    }
  }

  if( rc==LSM_OK && bDirty ){
    lsmFinishWork(pDb, 0, &rc);
  }else{
    int rcdummy = LSM_BUSY;
    lsmFinishWork(pDb, 0, &rcdummy);
    *pnWrite = 0;
  }
  assert( pDb->pWorker==0 );
  return rc;
}
