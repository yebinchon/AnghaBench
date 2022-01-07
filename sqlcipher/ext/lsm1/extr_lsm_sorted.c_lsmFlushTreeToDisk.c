
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int nMerge; } ;
typedef TYPE_1__ lsm_db ;


 int LSM_OK ;
 int TREE_BOTH ;
 int lsmBeginWork (TYPE_1__*) ;
 int lsmFinishWork (TYPE_1__*,int,int*) ;
 scalar_t__ sortedDbIsFull (TYPE_1__*) ;
 int sortedNewToplevel (TYPE_1__*,int ,int ) ;
 int sortedWork (TYPE_1__*,int,int ,int,int ) ;

int lsmFlushTreeToDisk(lsm_db *pDb){
  int rc;

  rc = lsmBeginWork(pDb);
  while( rc==LSM_OK && sortedDbIsFull(pDb) ){
    rc = sortedWork(pDb, 256, pDb->nMerge, 1, 0);
  }

  if( rc==LSM_OK ){
    rc = sortedNewToplevel(pDb, TREE_BOTH, 0);
  }

  lsmFinishWork(pDb, 1, &rc);
  return rc;
}
