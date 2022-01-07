
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zthr_state_lock; scalar_t__ zthr_haswaiters; int zthr_wait_cv; int * zthr_thread; int zthr_cv; } ;
typedef TYPE_1__ zthr_t ;


 int ASSERT (int) ;
 scalar_t__ B_TRUE ;
 int cv_broadcast (int *) ;
 int cv_wait (int *,int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

void
zthr_wait_cycle_done(zthr_t *t)
{
 mutex_enter(&t->zthr_state_lock);
 if (t->zthr_thread != ((void*)0)) {
  t->zthr_haswaiters = B_TRUE;


  cv_broadcast(&t->zthr_cv);

  while ((t->zthr_haswaiters) && (t->zthr_thread != ((void*)0)))
   cv_wait(&t->zthr_wait_cv, &t->zthr_state_lock);

  ASSERT(!t->zthr_haswaiters);
 }

 mutex_exit(&t->zthr_state_lock);
}
