
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {int iTransId; } ;
struct TYPE_18__ {scalar_t__ iOldLog; TYPE_1__ root; } ;
struct TYPE_17__ {scalar_t__ nTransOpen; scalar_t__ bDiscardOld; scalar_t__ bReadonly; scalar_t__ iReader; scalar_t__ pCsr; TYPE_2__* pClient; TYPE_4__ treehdr; TYPE_5__* pShmhdr; } ;
typedef TYPE_3__ lsm_db ;
typedef TYPE_4__ TreeHeader ;
struct TYPE_19__ {int bWriter; int hdr1; } ;
struct TYPE_16__ {scalar_t__ iLogOff; } ;
typedef TYPE_5__ ShmHeader ;


 int LSM_BUSY ;
 int LSM_LOCK_EXCL ;
 int LSM_LOCK_UNLOCK ;
 int LSM_LOCK_WRITER ;
 int LSM_OK ;
 int assert (int) ;
 int lsmBeginReadTrans (TYPE_3__*) ;
 int lsmFinishReadTrans (TYPE_3__*) ;
 int lsmLogBegin (TYPE_3__*) ;
 int lsmShmLock (TYPE_3__*,int ,int ,int ) ;
 int lsmTreeDiscardOld (TYPE_3__*) ;
 scalar_t__ lsmTreeHasOld (TYPE_3__*) ;
 int lsmTreeRepair (TYPE_3__*) ;
 scalar_t__ memcmp (int *,TYPE_4__*,int) ;

int lsmBeginWriteTrans(lsm_db *pDb){
  int rc = LSM_OK;
  ShmHeader *pShm = pDb->pShmhdr;

  assert( pDb->nTransOpen==0 );
  assert( pDb->bDiscardOld==0 );
  assert( pDb->bReadonly==0 );


  if( pDb->iReader<0 ){
    rc = lsmBeginReadTrans(pDb);
  }


  if( rc==LSM_OK ){
    rc = lsmShmLock(pDb, LSM_LOCK_WRITER, LSM_LOCK_EXCL, 0);
  }


  if( rc==LSM_OK && pShm->bWriter ){
    rc = lsmTreeRepair(pDb);
    if( rc==LSM_OK ) pShm->bWriter = 0;
  }



  if( rc==LSM_OK && memcmp(&pShm->hdr1, &pDb->treehdr, sizeof(TreeHeader)) ){
    rc = LSM_BUSY;
  }

  if( rc==LSM_OK ){
    rc = lsmLogBegin(pDb);
  }




  if( rc==LSM_OK ){
    TreeHeader *p = &pDb->treehdr;
    pShm->bWriter = 1;
    p->root.iTransId++;
    if( lsmTreeHasOld(pDb) && p->iOldLog==pDb->pClient->iLogOff ){
      lsmTreeDiscardOld(pDb);
      pDb->bDiscardOld = 1;
    }
  }else{
    lsmShmLock(pDb, LSM_LOCK_WRITER, LSM_LOCK_UNLOCK, 0);
    if( pDb->pCsr==0 ) lsmFinishReadTrans(pDb);
  }
  return rc;
}
