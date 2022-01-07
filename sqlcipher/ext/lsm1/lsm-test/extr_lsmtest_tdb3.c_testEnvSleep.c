
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* xSleep ) (TYPE_1__*,int) ;} ;
typedef TYPE_1__ lsm_env ;


 int stub1 (TYPE_1__*,int) ;
 TYPE_1__* tdb_lsm_env () ;

__attribute__((used)) static int testEnvSleep(lsm_env *pEnv, int us){
  lsm_env *pRealEnv = tdb_lsm_env();
  return pRealEnv->xSleep(pRealEnv, us);
}
