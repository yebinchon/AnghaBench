
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int lsm_i64 ;
typedef int lsm_file ;
struct TYPE_4__ {int (* xRemap ) (int ,int ,void**,int *) ;} ;
typedef TYPE_1__ lsm_env ;
struct TYPE_5__ {int pReal; } ;
typedef TYPE_2__ LsmFile ;


 int stub1 (int ,int ,void**,int *) ;
 TYPE_1__* tdb_lsm_env () ;

__attribute__((used)) static int testEnvRemap(
  lsm_file *pFile,
  lsm_i64 iMin,
  void **ppOut,
  lsm_i64 *pnOut
){
  lsm_env *pRealEnv = tdb_lsm_env();
  LsmFile *p = (LsmFile *)pFile;
  return pRealEnv->xRemap(p->pReal, iMin, ppOut, pnOut);
}
