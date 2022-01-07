
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int lsm_mutex ;
struct TYPE_2__ {int bHeld; } ;
typedef TYPE_1__ NoopMutex ;


 int assert (int) ;

__attribute__((used)) static void lsmPosixOsMutexLeave(lsm_mutex *pMutex){
  NoopMutex *p = (NoopMutex *)pMutex;
  assert( p->bHeld==1 );
  p->bHeld = 0;
}
