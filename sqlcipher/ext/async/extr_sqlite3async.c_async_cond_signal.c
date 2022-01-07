
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * aCond; } ;


 int ASYNC_MUTEX_QUEUE ;
 int assert (int ) ;
 int mutex_held (int ) ;
 TYPE_1__ primitives ;
 int pthread_cond_signal (int *) ;

__attribute__((used)) static void async_cond_signal(int eCond){
  assert( mutex_held(ASYNC_MUTEX_QUEUE) );
  pthread_cond_signal(&primitives.aCond[eCond]);
}
