
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lsm_env ;
struct TYPE_3__ {int bReadonly; int pFile; int zName; } ;
typedef TYPE_1__ Database ;


 int LSM_IOERR ;
 int LSM_OPEN_READONLY ;
 int lsmEnvOpen (int *,int ,int ,int *) ;

__attribute__((used)) static int dbOpenSharedFd(lsm_env *pEnv, Database *p, int bRoOk){
  int rc;

  rc = lsmEnvOpen(pEnv, p->zName, 0, &p->pFile);
  if( rc==LSM_IOERR && bRoOk ){
    rc = lsmEnvOpen(pEnv, p->zName, LSM_OPEN_READONLY, &p->pFile);
    p->bReadonly = 1;
  }

  return rc;
}
