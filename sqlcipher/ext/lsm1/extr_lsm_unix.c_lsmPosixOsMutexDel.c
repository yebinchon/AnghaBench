
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lsm_mutex ;
struct TYPE_3__ {scalar_t__ bStatic; scalar_t__ pEnv; } ;
typedef TYPE_1__ NoopMutex ;


 int assert (int) ;
 int lsmFree (scalar_t__,TYPE_1__*) ;

__attribute__((used)) static void lsmPosixOsMutexDel(lsm_mutex *pMutex) {
  NoopMutex *p = (NoopMutex *)pMutex;
  assert( p->bStatic==0 && p->pEnv );
  lsmFree(p->pEnv, p);
}
