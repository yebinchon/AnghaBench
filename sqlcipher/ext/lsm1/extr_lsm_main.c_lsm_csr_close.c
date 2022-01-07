
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lsm_db ;
typedef int lsm_cursor ;
typedef int MultiCursor ;


 int LSM_OK ;
 int assert_db_state (int *) ;
 int dbReleaseClientSnapshot (int *) ;
 int lsmMCursorClose (int *,int) ;
 int * lsmMCursorDb (int *) ;

int lsm_csr_close(lsm_cursor *p){
  if( p ){
    lsm_db *pDb = lsmMCursorDb((MultiCursor *)p);
    assert_db_state(pDb);
    lsmMCursorClose((MultiCursor *)p, 1);
    dbReleaseClientSnapshot(pDb);
    assert_db_state(pDb);
  }
  return LSM_OK;
}
