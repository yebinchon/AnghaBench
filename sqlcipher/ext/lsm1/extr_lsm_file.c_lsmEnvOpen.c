
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lsm_file ;
struct TYPE_4__ {int (* xOpen ) (TYPE_1__*,char const*,int,int **) ;} ;
typedef TYPE_1__ lsm_env ;


 int stub1 (TYPE_1__*,char const*,int,int **) ;

int lsmEnvOpen(lsm_env *pEnv, const char *zFile, int flags, lsm_file **ppNew){
  return pEnv->xOpen(pEnv, zFile, flags, ppNew);
}
