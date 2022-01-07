
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int tp_flags; int tp_mutex; int tp_waitcv; int * tp_active; int * tp_head; } ;
typedef TYPE_1__ tpool_t ;


 int ASSERT (int) ;
 int TP_ABANDON ;
 int TP_DESTROY ;
 int TP_WAIT ;
 int pthread_cleanup_pop (int) ;
 int pthread_cleanup_push (int ,TYPE_1__*) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int tpool_cleanup ;
 int tpool_member (TYPE_1__*) ;

void
tpool_wait(tpool_t *tpool)
{
 ASSERT(!tpool_member(tpool));
 ASSERT(!(tpool->tp_flags & (TP_DESTROY | TP_ABANDON)));

 pthread_mutex_lock(&tpool->tp_mutex);
 pthread_cleanup_push(tpool_cleanup, tpool);
 while (tpool->tp_head != ((void*)0) || tpool->tp_active != ((void*)0)) {
  tpool->tp_flags |= TP_WAIT;
  (void) pthread_cond_wait(&tpool->tp_waitcv, &tpool->tp_mutex);
  ASSERT(!(tpool->tp_flags & (TP_DESTROY | TP_ABANDON)));
 }
 pthread_cleanup_pop(1);
}
