
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int lsm_file ;
struct TYPE_6__ {int (* xLock ) (int ,int,int) ;} ;
typedef TYPE_2__ lsm_env ;
struct TYPE_7__ {int pReal; TYPE_1__* pDb; } ;
struct TYPE_5__ {scalar_t__ bNoRecovery; } ;
typedef TYPE_3__ LsmFile ;


 int LSM_BUSY ;
 int LSM_LOCK_EXCL ;
 int stub1 (int ,int,int) ;
 TYPE_2__* tdb_lsm_env () ;

__attribute__((used)) static int testEnvLock(lsm_file *pFile, int iLock, int eType){
  LsmFile *p = (LsmFile *)pFile;
  lsm_env *pRealEnv = tdb_lsm_env();

  if( iLock==2 && eType==LSM_LOCK_EXCL && p->pDb->bNoRecovery ){
    return LSM_BUSY;
  }
  return pRealEnv->xLock(p->pReal, iLock, eType);
}
