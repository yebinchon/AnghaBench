
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lsm_env ;
struct TYPE_3__ {int pFile; scalar_t__ bMultiProc; } ;
typedef TYPE_1__ Database ;


 int LSM_OK ;
 int lsmEnvLock (int *,int ,int,int) ;

__attribute__((used)) static int lockSharedFile(lsm_env *pEnv, Database *p, int iLock, int eOp){
  int rc = LSM_OK;
  if( p->bMultiProc ){
    rc = lsmEnvLock(pEnv, p->pFile, iLock, eOp);
  }
  return rc;
}
