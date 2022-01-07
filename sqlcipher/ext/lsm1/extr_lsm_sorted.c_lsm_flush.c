
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ nTransOpen; scalar_t__ pCsr; } ;
typedef TYPE_1__ lsm_db ;


 int LSM_MISUSE_BKPT ;
 int LSM_OK ;
 int lsmBeginWriteTrans (TYPE_1__*) ;
 int lsmFinishReadTrans (TYPE_1__*) ;
 int lsmFinishWriteTrans (TYPE_1__*,int) ;
 int lsmFlushTreeToDisk (TYPE_1__*) ;
 int lsmTreeDiscardOld (TYPE_1__*) ;
 int lsmTreeMakeOld (TYPE_1__*) ;

int lsm_flush(lsm_db *db){
  int rc;

  if( db->nTransOpen>0 || db->pCsr ){
    rc = LSM_MISUSE_BKPT;
  }else{
    rc = lsmBeginWriteTrans(db);
    if( rc==LSM_OK ){
      lsmFlushTreeToDisk(db);
      lsmTreeDiscardOld(db);
      lsmTreeMakeOld(db);
      lsmTreeDiscardOld(db);
    }

    if( rc==LSM_OK ){
      rc = lsmFinishWriteTrans(db, 1);
    }else{
      lsmFinishWriteTrans(db, 0);
    }
    lsmFinishReadTrans(db);
  }

  return rc;
}
