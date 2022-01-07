
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int lsm_mutex ;
typedef int lsm_env ;
struct TYPE_2__ {int * pEnv; } ;
typedef TYPE_1__ NoopMutex ;


 int LSM_NOMEM_BKPT ;
 int LSM_OK ;
 scalar_t__ lsmMallocZero (int *,int) ;

__attribute__((used)) static int lsmPosixOsMutexNew(lsm_env *pEnv, lsm_mutex **ppNew){
  NoopMutex *p;
  p = (NoopMutex *)lsmMallocZero(pEnv, sizeof(NoopMutex));
  if( p ) p->pEnv = pEnv;
  *ppNew = (lsm_mutex *)p;
  return (p ? LSM_OK : LSM_NOMEM_BKPT);
}
