
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* xFullpath ) (TYPE_1__*,char const*,char*,int*) ;} ;
typedef TYPE_1__ lsm_env ;


 int stub1 (TYPE_1__*,char const*,char*,int*) ;
 TYPE_1__* tdb_lsm_env () ;

__attribute__((used)) static int testEnvFullpath(
  lsm_env *pEnv,
  const char *zFile,
  char *zOut,
  int *pnOut
){
  lsm_env *pRealEnv = tdb_lsm_env();
  return pRealEnv->xFullpath(pRealEnv, zFile, zOut, pnOut);
}
