
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int nTransOpen; scalar_t__ eSafety; int pFS; } ;
typedef TYPE_1__ lsm_db ;


 int LSM_MAX (int ,int) ;
 int LSM_OK ;
 scalar_t__ LSM_SAFETY_FULL ;
 int assert_db_state (TYPE_1__*) ;
 int dbReleaseClientSnapshot (TYPE_1__*) ;
 int lsmFinishWriteTrans (TYPE_1__*,int) ;
 int lsmFsSyncLog (int ) ;
 int lsmLogCommit (TYPE_1__*) ;

int lsm_commit(lsm_db *pDb, int iLevel){
  int rc = LSM_OK;

  assert_db_state( pDb );


  if( iLevel<0 ) iLevel = LSM_MAX(0, pDb->nTransOpen - 1);

  if( iLevel<pDb->nTransOpen ){
    if( iLevel==0 ){
      int rc2;

      if( rc==LSM_OK ) rc = lsmLogCommit(pDb);
      if( rc==LSM_OK && pDb->eSafety==LSM_SAFETY_FULL ){
        rc = lsmFsSyncLog(pDb->pFS);
      }
      rc2 = lsmFinishWriteTrans(pDb, (rc==LSM_OK));
      if( rc==LSM_OK ) rc = rc2;
    }
    pDb->nTransOpen = iLevel;
  }
  dbReleaseClientSnapshot(pDb);
  return rc;
}
