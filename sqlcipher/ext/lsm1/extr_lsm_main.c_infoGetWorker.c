
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * pWorker; } ;
typedef TYPE_1__ lsm_db ;
typedef int Snapshot ;


 int LSM_OK ;
 int assert (int) ;
 int lsmBeginWork (TYPE_1__*) ;

__attribute__((used)) static int infoGetWorker(lsm_db *pDb, Snapshot **pp, int *pbUnlock){
  int rc = LSM_OK;

  assert( *pbUnlock==0 );
  if( !pDb->pWorker ){
    rc = lsmBeginWork(pDb);
    if( rc!=LSM_OK ) return rc;
    *pbUnlock = 1;
  }
  if( pp ) *pp = pDb->pWorker;
  return rc;
}
