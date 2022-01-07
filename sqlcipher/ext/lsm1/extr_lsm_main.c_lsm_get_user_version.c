
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {unsigned int iUsrVersion; } ;
struct TYPE_9__ {scalar_t__ pShmhdr; scalar_t__ iReader; TYPE_1__ treehdr; int bReadonly; } ;
typedef TYPE_2__ lsm_db ;


 int LSM_OK ;
 int assert (int ) ;
 int assert_db_state (TYPE_2__*) ;
 int dbReleaseClientSnapshot (TYPE_2__*) ;
 int lsmBeginReadTrans (TYPE_2__*) ;
 int lsmBeginRoTrans (TYPE_2__*) ;

int lsm_get_user_version(lsm_db *pDb, unsigned int *piUsr){
  int rc = LSM_OK;


  assert_db_state(pDb);
  if( pDb->pShmhdr==0 ){
    assert( pDb->bReadonly );
    rc = lsmBeginRoTrans(pDb);
  }else if( pDb->iReader<0 ){
    rc = lsmBeginReadTrans(pDb);
  }


  if( rc==LSM_OK ){
    *piUsr = pDb->treehdr.iUsrVersion;
  }

  dbReleaseClientSnapshot(pDb);
  assert_db_state(pDb);
  return rc;
}
