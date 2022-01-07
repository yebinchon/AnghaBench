
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ nMaxFreelist; TYPE_3__* pWorker; } ;
typedef TYPE_2__ lsm_db ;
struct TYPE_7__ {scalar_t__ nEntry; } ;
struct TYPE_9__ {TYPE_1__ freelist; } ;
typedef TYPE_3__ Snapshot ;


 int LSM_OK ;
 int lsmCheckpointSaveWorker (TYPE_2__*,int) ;
 int sortedNewFreelistOnly (TYPE_2__*) ;

int lsmSaveWorker(lsm_db *pDb, int bFlush){
  Snapshot *p = pDb->pWorker;
  if( p->freelist.nEntry>pDb->nMaxFreelist ){
    int rc = sortedNewFreelistOnly(pDb);
    if( rc!=LSM_OK ) return rc;
  }
  return lsmCheckpointSaveWorker(pDb, bFlush);
}
