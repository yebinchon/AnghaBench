
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int tp_flags; scalar_t__ tp_current; int tp_mutex; int tp_workcv; } ;
typedef TYPE_1__ tpool_t ;


 int ASSERT (int) ;
 int TP_ABANDON ;
 int TP_DESTROY ;
 int TP_SUSPEND ;
 int delete_pool (TYPE_1__*) ;
 int pthread_cond_broadcast (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void
tpool_abandon(tpool_t *tpool)
{
 ASSERT(!(tpool->tp_flags & (TP_DESTROY | TP_ABANDON)));

 pthread_mutex_lock(&tpool->tp_mutex);
 if (tpool->tp_current == 0) {

  pthread_mutex_unlock(&tpool->tp_mutex);
  delete_pool(tpool);
 } else {

  tpool->tp_flags |= TP_ABANDON;
  tpool->tp_flags &= ~TP_SUSPEND;
  (void) pthread_cond_broadcast(&tpool->tp_workcv);
  pthread_mutex_unlock(&tpool->tp_mutex);
 }
}
