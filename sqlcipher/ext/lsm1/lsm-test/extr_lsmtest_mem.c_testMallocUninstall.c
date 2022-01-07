
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int xFree; int xRealloc; int xMalloc; scalar_t__ pMemCtx; } ;
typedef TYPE_1__ lsm_env ;
struct TYPE_7__ {int (* xDelMutex ) (TYPE_2__*) ;int xSaveFree; int xSaveRealloc; int xSaveMalloc; } ;
typedef TYPE_2__ TmGlobal ;


 int stub1 (TYPE_2__*) ;
 int tmLsmFree (TYPE_2__*) ;

void testMallocUninstall(lsm_env *pEnv){
  TmGlobal *p = (TmGlobal *)pEnv->pMemCtx;
  pEnv->pMemCtx = 0;
  if( p ){
    pEnv->xMalloc = p->xSaveMalloc;
    pEnv->xRealloc = p->xSaveRealloc;
    pEnv->xFree = p->xSaveFree;
    p->xDelMutex(p);
    tmLsmFree(p);
  }
}
