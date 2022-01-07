
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* xShmBarrier ) () ;} ;
typedef TYPE_1__ lsm_env ;


 int stub1 () ;

void lsmEnvShmBarrier(lsm_env *pEnv){
  pEnv->xShmBarrier();
}
