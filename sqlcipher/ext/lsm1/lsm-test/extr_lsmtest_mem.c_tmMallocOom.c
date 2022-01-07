
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nCountdown; int bPersist; void (* xHook ) (void*) ;int bEnable; void* pHookCtx; } ;
typedef TYPE_1__ TmGlobal ;


 int assert (int) ;

__attribute__((used)) static void tmMallocOom(
  TmGlobal *pTm,
  int nCountdown,
  int bPersist,
  void (*xHook)(void *),
  void *pHookCtx
){
  assert( nCountdown>=0 );
  assert( bPersist==0 || bPersist==1 );
  pTm->nCountdown = nCountdown;
  pTm->bPersist = bPersist;
  pTm->xHook = xHook;
  pTm->pHookCtx = pHookCtx;
  pTm->bEnable = 1;
}
