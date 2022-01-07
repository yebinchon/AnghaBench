
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ tp_current; int tp_flags; int tp_mutex; int tp_busycv; } ;
typedef TYPE_1__ tpool_t ;


 int TP_ABANDON ;
 int TP_DESTROY ;
 int delete_pool (TYPE_1__*) ;
 int pthread_cond_broadcast (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void
worker_cleanup(void *arg)
{
 tpool_t *tpool = (tpool_t *)arg;

 if (--tpool->tp_current == 0 &&
     (tpool->tp_flags & (TP_DESTROY | TP_ABANDON))) {
  if (tpool->tp_flags & TP_ABANDON) {
   pthread_mutex_unlock(&tpool->tp_mutex);
   delete_pool(tpool);
   return;
  }
  if (tpool->tp_flags & TP_DESTROY)
   (void) pthread_cond_broadcast(&tpool->tp_busycv);
 }
 pthread_mutex_unlock(&tpool->tp_mutex);
}
