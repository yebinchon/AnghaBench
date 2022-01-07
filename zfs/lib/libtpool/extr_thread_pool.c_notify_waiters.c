
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tp_waitcv; int tp_flags; int * tp_active; int * tp_head; } ;
typedef TYPE_1__ tpool_t ;


 int TP_WAIT ;
 int pthread_cond_broadcast (int *) ;

__attribute__((used)) static void
notify_waiters(tpool_t *tpool)
{
 if (tpool->tp_head == ((void*)0) && tpool->tp_active == ((void*)0)) {
  tpool->tp_flags &= ~TP_WAIT;
  (void) pthread_cond_broadcast(&tpool->tp_waitcv);
 }
}
