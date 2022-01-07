
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int tp_flags; scalar_t__ tp_current; int tp_mutex; int tp_busycv; int tp_waitcv; TYPE_2__* tp_active; int tp_workcv; } ;
typedef TYPE_1__ tpool_t ;
struct TYPE_8__ {int tpa_tid; struct TYPE_8__* tpa_next; } ;
typedef TYPE_2__ tpool_active_t ;


 int ASSERT (int) ;
 int TP_ABANDON ;
 int TP_DESTROY ;
 int TP_SUSPEND ;
 int TP_WAIT ;
 int delete_pool (TYPE_1__*) ;
 int pthread_cancel (int ) ;
 int pthread_cleanup_pop (int) ;
 int pthread_cleanup_push (int ,TYPE_1__*) ;
 int pthread_cond_broadcast (int *) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int tpool_cleanup ;
 int tpool_member (TYPE_1__*) ;

void
tpool_destroy(tpool_t *tpool)
{
 tpool_active_t *activep;

 ASSERT(!tpool_member(tpool));
 ASSERT(!(tpool->tp_flags & (TP_DESTROY | TP_ABANDON)));

 pthread_mutex_lock(&tpool->tp_mutex);
 pthread_cleanup_push(tpool_cleanup, tpool);


 tpool->tp_flags |= TP_DESTROY;
 tpool->tp_flags &= ~TP_SUSPEND;
 (void) pthread_cond_broadcast(&tpool->tp_workcv);


 for (activep = tpool->tp_active; activep; activep = activep->tpa_next)
  (void) pthread_cancel(activep->tpa_tid);


 while (tpool->tp_active != ((void*)0)) {
  tpool->tp_flags |= TP_WAIT;
  (void) pthread_cond_wait(&tpool->tp_waitcv, &tpool->tp_mutex);
 }


 while (tpool->tp_current != 0)
  (void) pthread_cond_wait(&tpool->tp_busycv, &tpool->tp_mutex);

 pthread_cleanup_pop(1);
 delete_pool(tpool);
}
