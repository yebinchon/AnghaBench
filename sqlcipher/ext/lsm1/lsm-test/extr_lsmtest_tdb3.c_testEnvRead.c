
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int lsm_i64 ;
typedef int lsm_file ;
struct TYPE_6__ {int (* xRead ) (int ,int ,void*,int) ;} ;
typedef TYPE_2__ lsm_env ;
struct TYPE_7__ {int pReal; TYPE_1__* pDb; } ;
struct TYPE_5__ {scalar_t__ bCrashed; } ;
typedef TYPE_3__ LsmFile ;


 int LSM_IOERR ;
 int stub1 (int ,int ,void*,int) ;
 TYPE_2__* tdb_lsm_env () ;

__attribute__((used)) static int testEnvRead(lsm_file *pFile, lsm_i64 iOff, void *pData, int nData){
  lsm_env *pRealEnv = tdb_lsm_env();
  LsmFile *p = (LsmFile *)pFile;
  if( p->pDb->bCrashed ) return LSM_IOERR;
  return pRealEnv->xRead(p->pReal, iOff, pData, nData);
}
