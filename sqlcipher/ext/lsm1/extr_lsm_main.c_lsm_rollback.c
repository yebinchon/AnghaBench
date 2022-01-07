
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int nTransOpen; TYPE_2__* aTrans; } ;
typedef TYPE_1__ lsm_db ;
struct TYPE_10__ {int log; int tree; } ;
typedef TYPE_2__ TransMark ;


 int LSM_MAX (int ,int) ;
 int LSM_OK ;
 int assert_db_state (TYPE_1__*) ;
 int dbReleaseClientSnapshot (TYPE_1__*) ;
 int lsmFinishWriteTrans (TYPE_1__*,int ) ;
 int lsmLogSeek (TYPE_1__*,int *) ;
 int lsmTreeRollback (TYPE_1__*,int *) ;

int lsm_rollback(lsm_db *pDb, int iLevel){
  int rc = LSM_OK;
  assert_db_state( pDb );

  if( pDb->nTransOpen ){

    if( iLevel<0 ) iLevel = LSM_MAX(0, pDb->nTransOpen - 1);

    if( iLevel<=pDb->nTransOpen ){
      TransMark *pMark = &pDb->aTrans[(iLevel==0 ? 0 : iLevel-1)];
      lsmTreeRollback(pDb, &pMark->tree);
      if( iLevel ) lsmLogSeek(pDb, &pMark->log);
      pDb->nTransOpen = iLevel;
    }

    if( pDb->nTransOpen==0 ){
      lsmFinishWriteTrans(pDb, 0);
    }
    dbReleaseClientSnapshot(pDb);
  }

  return rc;
}
