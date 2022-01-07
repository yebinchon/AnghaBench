
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {TYPE_4__* aArray; } ;
struct TYPE_13__ {int pCtx; int (* xFree ) (int ) ;} ;
struct TYPE_12__ {int pCtx; int (* xFree ) (int ) ;} ;
struct TYPE_15__ {int pEnv; struct TYPE_15__* apShm; struct TYPE_15__* aTrans; TYPE_3__ rollback; TYPE_2__ compress; TYPE_1__ factory; int pFS; scalar_t__ pClient; scalar_t__ nTransOpen; scalar_t__ pCsr; } ;
typedef TYPE_4__ lsm_db ;


 int LSM_MISUSE_BKPT ;
 int LSM_OK ;
 int assertRwclientLockValue (TYPE_4__*) ;
 int assert_db_state (TYPE_4__*) ;
 int lsmDbDatabaseRelease (TYPE_4__*) ;
 int lsmFree (int ,TYPE_4__*) ;
 int lsmFreeSnapshot (int ,scalar_t__) ;
 int lsmFsClose (int ) ;
 int lsmLogClose (TYPE_4__*) ;
 int lsmMCursorFreeCache (TYPE_4__*) ;
 int stub1 (int ) ;
 int stub2 (int ) ;

int lsm_close(lsm_db *pDb){
  int rc = LSM_OK;
  if( pDb ){
    assert_db_state(pDb);
    if( pDb->pCsr || pDb->nTransOpen ){
      rc = LSM_MISUSE_BKPT;
    }else{
      lsmMCursorFreeCache(pDb);
      lsmFreeSnapshot(pDb->pEnv, pDb->pClient);
      pDb->pClient = 0;

      assertRwclientLockValue(pDb);

      lsmDbDatabaseRelease(pDb);
      lsmLogClose(pDb);
      lsmFsClose(pDb->pFS);




      if( pDb->factory.xFree ) pDb->factory.xFree(pDb->factory.pCtx);
      if( pDb->compress.xFree ) pDb->compress.xFree(pDb->compress.pCtx);

      lsmFree(pDb->pEnv, pDb->rollback.aArray);
      lsmFree(pDb->pEnv, pDb->aTrans);
      lsmFree(pDb->pEnv, pDb->apShm);
      lsmFree(pDb->pEnv, pDb);
    }
  }
  return rc;
}
