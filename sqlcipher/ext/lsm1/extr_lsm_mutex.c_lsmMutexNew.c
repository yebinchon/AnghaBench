
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lsm_mutex ;
struct TYPE_4__ {int (* xMutexNew ) (TYPE_1__*,int **) ;} ;
typedef TYPE_1__ lsm_env ;


 int stub1 (TYPE_1__*,int **) ;

int lsmMutexNew(lsm_env *pEnv, lsm_mutex **ppNew){
  return pEnv->xMutexNew(pEnv, ppNew);
}
