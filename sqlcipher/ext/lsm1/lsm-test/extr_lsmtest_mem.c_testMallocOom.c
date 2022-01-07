
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pMemCtx; } ;
typedef TYPE_1__ lsm_env ;
typedef int TmGlobal ;


 int tmMallocOom (int *,int,int,void (*) (void*),void*) ;

void testMallocOom(
  lsm_env *pEnv,
  int nCountdown,
  int bPersist,
  void (*xHook)(void *),
  void *pHookCtx
){
  TmGlobal *pTm = (TmGlobal *)(pEnv->pMemCtx);
  tmMallocOom(pTm, nCountdown, bPersist, xHook, pHookCtx);
}
