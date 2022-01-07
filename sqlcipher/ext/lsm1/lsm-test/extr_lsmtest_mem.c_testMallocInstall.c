
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int xFree; int xRealloc; int xMalloc; void* pMemCtx; int (* xMutexStatic ) (TYPE_1__*,int ,int *) ;} ;
typedef TYPE_1__ lsm_env ;
struct TYPE_8__ {int xSaveFree; int xSaveRealloc; int xSaveMalloc; void* pMutex; int xDelMutex; int xLeaveMutex; int xEnterMutex; scalar_t__ (* xMalloc ) (int) ;int xFree; int xRealloc; } ;
typedef TYPE_2__ TmGlobal ;
struct TYPE_9__ {int pMutex; TYPE_1__* pEnv; } ;
typedef TYPE_3__ LsmMutex ;


 int LSM_MUTEX_HEAP ;
 int assert (int) ;
 int memset (TYPE_2__*,int ,int) ;
 scalar_t__ stub1 (int) ;
 int stub2 (TYPE_1__*,int ,int *) ;
 int tmLsmEnvFree ;
 int tmLsmEnvMalloc ;
 int tmLsmEnvRealloc ;
 int tmLsmFree ;
 scalar_t__ tmLsmMalloc (int) ;
 int tmLsmMutexDel ;
 int tmLsmMutexEnter ;
 int tmLsmMutexLeave ;
 int tmLsmRealloc ;

void testMallocInstall(lsm_env *pEnv){
  TmGlobal *pGlobal;
  LsmMutex *pMutex;
  assert( pEnv->pMemCtx==0 );


  pGlobal = (TmGlobal *)tmLsmMalloc(sizeof(TmGlobal));
  memset(pGlobal, 0, sizeof(TmGlobal));
  pGlobal->xMalloc = tmLsmMalloc;
  pGlobal->xRealloc = tmLsmRealloc;
  pGlobal->xFree = tmLsmFree;
  pMutex = (LsmMutex *)pGlobal->xMalloc(sizeof(LsmMutex));
  pMutex->pEnv = pEnv;
  pEnv->xMutexStatic(pEnv, LSM_MUTEX_HEAP, &pMutex->pMutex);
  pGlobal->xEnterMutex = tmLsmMutexEnter;
  pGlobal->xLeaveMutex = tmLsmMutexLeave;
  pGlobal->xDelMutex = tmLsmMutexDel;
  pGlobal->pMutex = (void *)pMutex;

  pGlobal->xSaveMalloc = pEnv->xMalloc;
  pGlobal->xSaveRealloc = pEnv->xRealloc;
  pGlobal->xSaveFree = pEnv->xFree;


  pEnv->pMemCtx = (void *)pGlobal;
  pEnv->xMalloc = tmLsmEnvMalloc;
  pEnv->xRealloc = tmLsmEnvRealloc;
  pEnv->xFree = tmLsmEnvFree;
}
