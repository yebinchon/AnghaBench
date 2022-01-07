
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nMs; int pSet; } ;
typedef TYPE_1__ Mt1DelayCtx ;


 int testThreadSleep (int ,int ) ;

__attribute__((used)) static void xMt1Delay(void *pCtx){
  Mt1DelayCtx *p = (Mt1DelayCtx *)pCtx;
  testThreadSleep(p->pSet, p->nMs);
}
