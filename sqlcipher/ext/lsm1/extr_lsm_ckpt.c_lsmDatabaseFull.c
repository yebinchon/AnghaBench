
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_3__* pWorker; } ;
typedef TYPE_1__ lsm_db ;
struct TYPE_9__ {TYPE_2__* pLevel; } ;
struct TYPE_8__ {int nRight; struct TYPE_8__* pNext; } ;
typedef TYPE_2__ Level ;


 int LSM_LOCK_EXCL ;
 int LSM_LOCK_WORKER ;
 int LSM_MAX_RHS_SEGMENTS ;
 int assert (TYPE_3__*) ;
 TYPE_3__* lsmShmAssertLock (TYPE_1__*,int ,int ) ;

int lsmDatabaseFull(lsm_db *pDb){
  Level *p;
  int nRhs = 0;

  assert( lsmShmAssertLock(pDb, LSM_LOCK_WORKER, LSM_LOCK_EXCL) );
  assert( pDb->pWorker );

  for(p=pDb->pWorker->pLevel; p; p=p->pNext){
    nRhs += (p->nRight ? p->nRight : 1);
  }

  return (nRhs >= LSM_MAX_RHS_SEGMENTS);
}
