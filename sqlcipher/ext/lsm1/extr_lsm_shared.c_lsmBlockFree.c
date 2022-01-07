
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* pWorker; } ;
typedef TYPE_1__ lsm_db ;
struct TYPE_8__ {int iId; } ;
typedef TYPE_2__ Snapshot ;


 int LSM_OK ;
 int assert (int ) ;
 int freelistAppend (TYPE_1__*,int,int ) ;
 int lsmLogMessage (TYPE_1__*,int ,char*,int) ;
 int lsmShmAssertWorker (TYPE_1__*) ;

int lsmBlockFree(lsm_db *pDb, int iBlk){
  Snapshot *p = pDb->pWorker;
  assert( lsmShmAssertWorker(pDb) );





  return freelistAppend(pDb, iBlk, p->iId);
}
