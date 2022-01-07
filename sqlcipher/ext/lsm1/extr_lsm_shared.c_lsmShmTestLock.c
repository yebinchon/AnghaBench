
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_4__ {int mLock; int pEnv; struct TYPE_4__* pNext; TYPE_2__* pDatabase; } ;
typedef TYPE_1__ lsm_db ;
struct TYPE_5__ {int pClientMutex; int pFile; scalar_t__ bMultiProc; TYPE_1__* pConn; } ;
typedef TYPE_2__ Database ;


 int LSM_BUSY ;
 int LSM_LOCK_EXCL ;
 int LSM_OK ;
 int assert (int) ;
 int lsmEnvTestLock (int ,int ,int,int,int) ;
 int lsmMutexEnter (int ,int ) ;
 int lsmMutexLeave (int ,int ) ;

int lsmShmTestLock(
  lsm_db *db,
  int iLock,
  int nLock,
  int eOp
){
  int rc = LSM_OK;
  lsm_db *pIter;
  Database *p = db->pDatabase;
  int i;
  u64 mask = 0;

  for(i=iLock; i<(iLock+nLock); i++){
    mask |= ((u64)1 << (iLock-1));
    if( eOp==LSM_LOCK_EXCL ) mask |= ((u64)1 << (iLock+32-1));
  }

  lsmMutexEnter(db->pEnv, p->pClientMutex);
  for(pIter=p->pConn; pIter; pIter=pIter->pNext){
    if( pIter!=db && (pIter->mLock & mask) ){
      assert( pIter!=db );
      break;
    }
  }

  if( pIter ){
    rc = LSM_BUSY;
  }else if( p->bMultiProc ){
    rc = lsmEnvTestLock(db->pEnv, p->pFile, iLock, nLock, eOp);
  }

  lsmMutexLeave(db->pEnv, p->pClientMutex);
  return rc;
}
