
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ pShmhdr; scalar_t__ iReader; int bReadonly; } ;
typedef TYPE_1__ lsm_db ;
typedef int lsm_cursor ;
typedef int MultiCursor ;


 int LSM_OK ;
 int assert (int ) ;
 int assert_db_state (TYPE_1__*) ;
 int dbReleaseClientSnapshot (TYPE_1__*) ;
 int lsmBeginReadTrans (TYPE_1__*) ;
 int lsmBeginRoTrans (TYPE_1__*) ;
 int lsmMCursorClose (int *,int ) ;
 int lsmMCursorNew (TYPE_1__*,int **) ;

int lsm_csr_open(lsm_db *pDb, lsm_cursor **ppCsr){
  int rc = LSM_OK;
  MultiCursor *pCsr = 0;


  assert_db_state(pDb);

  if( pDb->pShmhdr==0 ){
    assert( pDb->bReadonly );
    rc = lsmBeginRoTrans(pDb);
  }else if( pDb->iReader<0 ){
    rc = lsmBeginReadTrans(pDb);
  }


  if( rc==LSM_OK ){
    rc = lsmMCursorNew(pDb, &pCsr);
  }




  if( rc!=LSM_OK ){
    lsmMCursorClose(pCsr, 0);
    dbReleaseClientSnapshot(pDb);
  }

  assert_db_state(pDb);
  *ppCsr = (lsm_cursor *)pCsr;
  return rc;
}
