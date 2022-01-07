
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int lsm_file ;
struct TYPE_5__ {int (* xClose ) (int ) ;} ;
typedef TYPE_1__ lsm_env ;
struct TYPE_6__ {int pReal; } ;
typedef TYPE_2__ LsmFile ;


 int LSM_OK ;
 int stub1 (int ) ;
 TYPE_1__* tdb_lsm_env () ;
 int testFree (TYPE_2__*) ;

__attribute__((used)) static int testEnvClose(lsm_file *pFile){
  lsm_env *pRealEnv = tdb_lsm_env();
  LsmFile *p = (LsmFile *)pFile;

  pRealEnv->xClose(p->pReal);
  testFree(p);
  return LSM_OK;
}
