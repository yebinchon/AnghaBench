
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int lsm_env ;
struct TYPE_4__ {int iId; } ;
struct TYPE_5__ {int iReader; int iRwclient; TYPE_1__ compress; int xLog; int iMmap; int bMultiProc; int bUseLog; int nMaxFreelist; int nMerge; int nDfltBlksz; int nDfltPgsz; int xCmp; int eSafety; int bAutowork; int nAutockpt; int nTreeLimit; int * pEnv; } ;
typedef TYPE_2__ lsm_db ;


 int LSM_COMPRESSION_NONE ;
 int LSM_DFLT_AUTOCHECKPOINT ;
 int LSM_DFLT_AUTOFLUSH ;
 int LSM_DFLT_AUTOMERGE ;
 int LSM_DFLT_AUTOWORK ;
 int LSM_DFLT_BLOCK_SIZE ;
 int LSM_DFLT_MMAP ;
 int LSM_DFLT_MULTIPLE_PROCESSES ;
 int LSM_DFLT_PAGE_SIZE ;
 int LSM_DFLT_SAFETY ;
 int LSM_DFLT_USE_LOG ;
 int LSM_MAX_FREELIST_ENTRIES ;
 int LSM_NOMEM_BKPT ;
 int LSM_OK ;
 int assert (int *) ;
 scalar_t__ lsmMallocZero (int *,int) ;
 int * lsm_default_env () ;
 int xCmp ;
 int xLog ;

int lsm_new(lsm_env *pEnv, lsm_db **ppDb){
  lsm_db *pDb;


  if( pEnv==0 ) pEnv = lsm_default_env();
  assert( pEnv );


  *ppDb = pDb = (lsm_db *)lsmMallocZero(pEnv, sizeof(lsm_db));
  if( pDb==0 ) return LSM_NOMEM_BKPT;


  pDb->pEnv = pEnv;
  pDb->nTreeLimit = LSM_DFLT_AUTOFLUSH;
  pDb->nAutockpt = LSM_DFLT_AUTOCHECKPOINT;
  pDb->bAutowork = LSM_DFLT_AUTOWORK;
  pDb->eSafety = LSM_DFLT_SAFETY;
  pDb->xCmp = xCmp;
  pDb->nDfltPgsz = LSM_DFLT_PAGE_SIZE;
  pDb->nDfltBlksz = LSM_DFLT_BLOCK_SIZE;
  pDb->nMerge = LSM_DFLT_AUTOMERGE;
  pDb->nMaxFreelist = LSM_MAX_FREELIST_ENTRIES;
  pDb->bUseLog = LSM_DFLT_USE_LOG;
  pDb->iReader = -1;
  pDb->iRwclient = -1;
  pDb->bMultiProc = LSM_DFLT_MULTIPLE_PROCESSES;
  pDb->iMmap = LSM_DFLT_MMAP;
  pDb->xLog = xLog;
  pDb->compress.iId = LSM_COMPRESSION_NONE;
  return LSM_OK;
}
