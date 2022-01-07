
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int tp_current; int tp_flags; TYPE_3__* tp_active; scalar_t__ tp_idle; scalar_t__ tp_njobs; int * tp_tail; TYPE_2__* tp_head; int tp_waitcv; int tp_workcv; int tp_busycv; int tp_mutex; struct TYPE_7__* tp_forw; } ;
typedef TYPE_1__ tpool_t ;
struct TYPE_8__ {struct TYPE_8__* tpj_next; } ;
typedef TYPE_2__ tpool_job_t ;
struct TYPE_9__ {scalar_t__ tpa_tid; struct TYPE_9__* tpa_next; } ;
typedef TYPE_3__ tpool_active_t ;
typedef scalar_t__ pthread_t ;


 int TP_ABANDON ;
 int TP_DESTROY ;
 int TP_WAIT ;
 int delete_pool (TYPE_1__*) ;
 int free (TYPE_2__*) ;
 int pthread_cond_init (int *,int *) ;
 int pthread_mutex_init (int *,int *) ;
 scalar_t__ pthread_self () ;
 TYPE_1__* thread_pools ;

void
postfork1_child_tpool(void)
{
 pthread_t my_tid = pthread_self();
 tpool_t *tpool;
 tpool_job_t *job;







top:
 if ((tpool = thread_pools) == ((void*)0))
  return;

 do {
  tpool_active_t *activep;

  (void) pthread_mutex_init(&tpool->tp_mutex, ((void*)0));
  (void) pthread_cond_init(&tpool->tp_busycv, ((void*)0));
  (void) pthread_cond_init(&tpool->tp_workcv, ((void*)0));
  (void) pthread_cond_init(&tpool->tp_waitcv, ((void*)0));
  for (job = tpool->tp_head; job; job = tpool->tp_head) {
   tpool->tp_head = job->tpj_next;
   free(job);
  }
  tpool->tp_tail = ((void*)0);
  tpool->tp_njobs = 0;
  for (activep = tpool->tp_active; activep;
      activep = activep->tpa_next) {
   if (activep->tpa_tid == my_tid) {
    activep->tpa_next = ((void*)0);
    break;
   }
  }
  tpool->tp_idle = 0;
  tpool->tp_current = 0;
  if ((tpool->tp_active = activep) != ((void*)0))
   tpool->tp_current = 1;
  tpool->tp_flags &= ~TP_WAIT;
  if (tpool->tp_flags & (TP_DESTROY | TP_ABANDON)) {
   tpool->tp_flags &= ~TP_DESTROY;
   tpool->tp_flags |= TP_ABANDON;
   if (tpool->tp_current == 0) {
    delete_pool(tpool);
    goto top;
   }
  }
 } while ((tpool = tpool->tp_forw) != thread_pools);
}
