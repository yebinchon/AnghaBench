
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint_t ;
typedef int taskq_thread_t ;
struct TYPE_8__ {int tq_nthreads; int tq_maxthreads; int tq_minalloc; int tq_maxalloc; int tq_flags; int tq_taskqs; scalar_t__ tq_instance; scalar_t__ tq_nspawn; int tq_wait_waitq; int tq_lock; int tq_lock_class; int tq_work_waitq; int tq_delay_list; int tq_prio_list; int tq_pend_list; int tq_free_list; void* tq_lowest_id; void* tq_next_id; scalar_t__ tq_nalloc; int tq_pri; scalar_t__ tq_nactive; int tq_name; int tq_active_list; int tq_thread_list; } ;
typedef TYPE_1__ taskq_t ;
typedef int pri_t ;


 int ASSERT (int) ;
 int INIT_LIST_HEAD (int *) ;
 int INT_MAX ;
 int KM_PUSHPAGE ;
 int MAX (int,int) ;
 int MIN (int,int) ;
 void* TASKQID_INITIAL ;
 int TASKQ_ACTIVE ;
 int TASKQ_CPR_SAFE ;
 int TASKQ_DYNAMIC ;
 int TASKQ_PREPOPULATE ;
 int TASKQ_THREADS_CPU_PCT ;
 int TQ_LOCK_GENERAL ;
 int TQ_NEW ;
 int TQ_PUSHPAGE ;
 int down_write (int *) ;
 int init_waitqueue_head (int *) ;
 TYPE_1__* kmem_alloc (int,int ) ;
 int kmem_strdup (char const*) ;
 int list_add_tail (int *,int *) ;
 int num_online_cpus () ;
 int spin_lock_init (int *) ;
 int spin_lock_irqsave_nested (int *,unsigned long,int ) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ spl_taskq_thread_dynamic ;
 int task_alloc (TYPE_1__*,int,unsigned long*) ;
 int task_done (TYPE_1__*,int ) ;
 int taskq_destroy (TYPE_1__*) ;
 scalar_t__ taskq_find_by_name (char const*) ;
 int * taskq_thread_create (TYPE_1__*) ;
 int tq_list ;
 int tq_list_sem ;
 int up_write (int *) ;
 int wait_event (int ,int) ;

taskq_t *
taskq_create(const char *name, int nthreads, pri_t pri,
    int minalloc, int maxalloc, uint_t flags)
{
 taskq_t *tq;
 taskq_thread_t *tqt;
 int count = 0, rc = 0, i;
 unsigned long irqflags;

 ASSERT(name != ((void*)0));
 ASSERT(minalloc >= 0);
 ASSERT(maxalloc <= INT_MAX);
 ASSERT(!(flags & (TASKQ_CPR_SAFE)));


 if (flags & TASKQ_THREADS_CPU_PCT) {
  ASSERT(nthreads <= 100);
  ASSERT(nthreads >= 0);
  nthreads = MIN(nthreads, 100);
  nthreads = MAX(nthreads, 0);
  nthreads = MAX((num_online_cpus() * nthreads) / 100, 1);
 }

 tq = kmem_alloc(sizeof (*tq), KM_PUSHPAGE);
 if (tq == ((void*)0))
  return (((void*)0));

 spin_lock_init(&tq->tq_lock);
 INIT_LIST_HEAD(&tq->tq_thread_list);
 INIT_LIST_HEAD(&tq->tq_active_list);
 tq->tq_name = kmem_strdup(name);
 tq->tq_nactive = 0;
 tq->tq_nthreads = 0;
 tq->tq_nspawn = 0;
 tq->tq_maxthreads = nthreads;
 tq->tq_pri = pri;
 tq->tq_minalloc = minalloc;
 tq->tq_maxalloc = maxalloc;
 tq->tq_nalloc = 0;
 tq->tq_flags = (flags | TASKQ_ACTIVE);
 tq->tq_next_id = TASKQID_INITIAL;
 tq->tq_lowest_id = TASKQID_INITIAL;
 INIT_LIST_HEAD(&tq->tq_free_list);
 INIT_LIST_HEAD(&tq->tq_pend_list);
 INIT_LIST_HEAD(&tq->tq_prio_list);
 INIT_LIST_HEAD(&tq->tq_delay_list);
 init_waitqueue_head(&tq->tq_work_waitq);
 init_waitqueue_head(&tq->tq_wait_waitq);
 tq->tq_lock_class = TQ_LOCK_GENERAL;
 INIT_LIST_HEAD(&tq->tq_taskqs);

 if (flags & TASKQ_PREPOPULATE) {
  spin_lock_irqsave_nested(&tq->tq_lock, irqflags,
      tq->tq_lock_class);

  for (i = 0; i < minalloc; i++)
   task_done(tq, task_alloc(tq, TQ_PUSHPAGE | TQ_NEW,
       &irqflags));

  spin_unlock_irqrestore(&tq->tq_lock, irqflags);
 }

 if ((flags & TASKQ_DYNAMIC) && spl_taskq_thread_dynamic)
  nthreads = 1;

 for (i = 0; i < nthreads; i++) {
  tqt = taskq_thread_create(tq);
  if (tqt == ((void*)0))
   rc = 1;
  else
   count++;
 }


 wait_event(tq->tq_wait_waitq, tq->tq_nthreads == count);




 tq->tq_nspawn = 0;

 if (rc) {
  taskq_destroy(tq);
  tq = ((void*)0);
 } else {
  down_write(&tq_list_sem);
  tq->tq_instance = taskq_find_by_name(name) + 1;
  list_add_tail(&tq->tq_taskqs, &tq_list);
  up_write(&tq_list_sem);
 }

 return (tq);
}
