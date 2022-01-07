
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ tp_current; int tp_attr; struct TYPE_8__* tpj_next; struct TYPE_8__* tp_head; TYPE_1__* tp_back; struct TYPE_8__* tp_forw; int * tp_active; } ;
typedef TYPE_2__ tpool_t ;
typedef TYPE_2__ tpool_job_t ;
struct TYPE_7__ {TYPE_2__* tp_forw; } ;


 int ASSERT (int) ;
 int free (TYPE_2__*) ;
 int pthread_attr_destroy (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int thread_pool_lock ;
 TYPE_2__* thread_pools ;

__attribute__((used)) static void
delete_pool(tpool_t *tpool)
{
 tpool_job_t *job;

 ASSERT(tpool->tp_current == 0 && tpool->tp_active == ((void*)0));




 (void) pthread_mutex_lock(&thread_pool_lock);
 if (thread_pools == tpool)
  thread_pools = tpool->tp_forw;
 if (thread_pools == tpool)
  thread_pools = ((void*)0);
 else {
  tpool->tp_back->tp_forw = tpool->tp_forw;
  tpool->tp_forw->tp_back = tpool->tp_back;
 }
 pthread_mutex_unlock(&thread_pool_lock);




 for (job = tpool->tp_head; job != ((void*)0); job = tpool->tp_head) {
  tpool->tp_head = job->tpj_next;
  free(job);
 }
 (void) pthread_attr_destroy(&tpool->tp_attr);
 free(tpool);
}
