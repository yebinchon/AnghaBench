
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lsm_mutex ;
struct TYPE_3__ {int (* xMutexDel ) (int *) ;} ;
typedef TYPE_1__ lsm_env ;


 int stub1 (int *) ;

void lsmMutexDel(lsm_env *pEnv, lsm_mutex *pMutex){
  if( pMutex ) pEnv->xMutexDel(pMutex);
}
