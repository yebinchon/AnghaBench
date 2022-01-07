
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int (* xUnlink ) (TYPE_1__*,char const*) ;} ;
typedef TYPE_1__ lsm_env ;


 int stub1 (TYPE_1__*,char const*) ;
 TYPE_1__* tdb_lsm_env () ;
 int unused_parameter (TYPE_1__*) ;

__attribute__((used)) static int testEnvUnlink(lsm_env *pEnv, const char *zFile){
  lsm_env *pRealEnv = tdb_lsm_env();
  unused_parameter(pEnv);
  return pRealEnv->xUnlink(pRealEnv, zFile);
}
