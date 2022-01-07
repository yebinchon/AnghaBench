
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int lsm_env ;
struct TYPE_7__ {TYPE_3__* a; } ;
struct TYPE_6__ {TYPE_3__* aEntry; } ;
struct TYPE_8__ {TYPE_2__ redirect; TYPE_1__ freelist; int pLevel; } ;
typedef TYPE_3__ Snapshot ;


 int lsmFree (int *,TYPE_3__*) ;
 int lsmSortedFreeLevel (int *,int ) ;

void lsmFreeSnapshot(lsm_env *pEnv, Snapshot *p){
  if( p ){
    lsmSortedFreeLevel(pEnv, p->pLevel);
    lsmFree(pEnv, p->freelist.aEntry);
    lsmFree(pEnv, p->redirect.a);
    lsmFree(pEnv, p);
  }
}
