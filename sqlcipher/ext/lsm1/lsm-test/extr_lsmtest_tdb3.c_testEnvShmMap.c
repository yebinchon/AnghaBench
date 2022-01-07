
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int lsm_file ;
struct TYPE_4__ {int (* xShmMap ) (int ,int,int,void**) ;} ;
typedef TYPE_1__ lsm_env ;
struct TYPE_5__ {int pReal; } ;
typedef TYPE_2__ LsmFile ;


 int stub1 (int ,int,int,void**) ;
 TYPE_1__* tdb_lsm_env () ;

__attribute__((used)) static int testEnvShmMap(lsm_file *pFile, int iRegion, int sz, void **pp){
  LsmFile *p = (LsmFile *)pFile;
  lsm_env *pRealEnv = tdb_lsm_env();
  return pRealEnv->xShmMap(p->pReal, iRegion, sz, pp);
}
