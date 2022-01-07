
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ pWorker; scalar_t__ nTransOpen; scalar_t__ pClient; int aSnapshot; int pEnv; scalar_t__ pCsr; int nMerge; } ;
typedef TYPE_1__ lsm_db ;
struct TYPE_14__ {struct TYPE_14__* pNext; } ;
typedef TYPE_2__ Level ;


 int LSM_BUSY ;
 int LSM_OK ;
 int assert (int) ;
 int doLsmWork (TYPE_1__*,int ,int,int ) ;
 int lsmCheckpointDeserialize (TYPE_1__*,int ,int ,scalar_t__*) ;
 int lsmCheckpointLoad (TYPE_1__*,int ) ;
 TYPE_2__* lsmDbSnapshotLevel (scalar_t__) ;
 int lsmFreeSnapshot (int ,scalar_t__) ;
 int lsmLogMessage (TYPE_1__*,int,char*,int,int,int) ;
 int lsmMCursorFreeCache (TYPE_1__*) ;
 int lsmRestoreCursors (TYPE_1__*) ;
 int lsmSaveCursors (TYPE_1__*) ;
 scalar_t__ lsmTreeHasOld (TYPE_1__*) ;

int lsmSortedAutoWork(
  lsm_db *pDb,
  int nUnit
){
  int rc = LSM_OK;
  int nDepth = 0;
  Level *pLevel;
  int bRestore = 0;

  assert( pDb->pWorker==0 );
  assert( pDb->nTransOpen>0 );



  for(pLevel=lsmDbSnapshotLevel(pDb->pClient); pLevel; pLevel=pLevel->pNext){

    nDepth += 1;
  }
  if( lsmTreeHasOld(pDb) ){
    nDepth += 1;
    bRestore = 1;
    rc = lsmSaveCursors(pDb);
    if( rc!=LSM_OK ) return rc;
  }

  if( nDepth>0 ){
    int nRemaining;

    nRemaining = nUnit * nDepth;




    assert( nRemaining>=0 );
    rc = doLsmWork(pDb, pDb->nMerge, nRemaining, 0);
    if( rc==LSM_BUSY ) rc = LSM_OK;

    if( bRestore && pDb->pCsr ){
      lsmMCursorFreeCache(pDb);
      lsmFreeSnapshot(pDb->pEnv, pDb->pClient);
      pDb->pClient = 0;
      if( rc==LSM_OK ){
        rc = lsmCheckpointLoad(pDb, 0);
      }
      if( rc==LSM_OK ){
        rc = lsmCheckpointDeserialize(pDb, 0, pDb->aSnapshot, &pDb->pClient);
      }
      if( rc==LSM_OK ){
        rc = lsmRestoreCursors(pDb);
      }
    }
  }

  return rc;
}
