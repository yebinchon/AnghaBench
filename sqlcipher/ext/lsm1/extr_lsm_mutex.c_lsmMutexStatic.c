
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lsm_mutex ;
struct TYPE_4__ {int (* xMutexStatic ) (TYPE_1__*,int,int **) ;} ;
typedef TYPE_1__ lsm_env ;


 int stub1 (TYPE_1__*,int,int **) ;

int lsmMutexStatic(lsm_env *pEnv, int iMutex, lsm_mutex **ppStatic){
  return pEnv->xMutexStatic(pEnv, iMutex, ppStatic);
}
