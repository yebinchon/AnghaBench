
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int * tqt_thread; int tqt_id; TYPE_2__* tqt_tq; int tqt_active_list; int tqt_thread_list; } ;
typedef TYPE_1__ taskq_thread_t ;
struct TYPE_9__ {int tq_pri; int tq_name; } ;
typedef TYPE_2__ taskq_t ;


 int INIT_LIST_HEAD (int *) ;
 int KM_PUSHPAGE ;
 int PRIO_TO_NICE (int ) ;
 int TASKQID_INVALID ;
 TYPE_1__* kmem_alloc (int,int ) ;
 int kmem_free (TYPE_1__*,int) ;
 int kthread_bind (int *,int) ;
 int num_online_cpus () ;
 int set_user_nice (int *,int ) ;
 int * spl_kthread_create (int ,TYPE_1__*,char*,int ) ;
 scalar_t__ spl_taskq_thread_bind ;
 scalar_t__ spl_taskq_thread_priority ;
 int taskq_thread ;
 int wake_up_process (int *) ;

__attribute__((used)) static taskq_thread_t *
taskq_thread_create(taskq_t *tq)
{
 static int last_used_cpu = 0;
 taskq_thread_t *tqt;

 tqt = kmem_alloc(sizeof (*tqt), KM_PUSHPAGE);
 INIT_LIST_HEAD(&tqt->tqt_thread_list);
 INIT_LIST_HEAD(&tqt->tqt_active_list);
 tqt->tqt_tq = tq;
 tqt->tqt_id = TASKQID_INVALID;

 tqt->tqt_thread = spl_kthread_create(taskq_thread, tqt,
     "%s", tq->tq_name);
 if (tqt->tqt_thread == ((void*)0)) {
  kmem_free(tqt, sizeof (taskq_thread_t));
  return (((void*)0));
 }

 if (spl_taskq_thread_bind) {
  last_used_cpu = (last_used_cpu + 1) % num_online_cpus();
  kthread_bind(tqt->tqt_thread, last_used_cpu);
 }

 if (spl_taskq_thread_priority)
  set_user_nice(tqt->tqt_thread, PRIO_TO_NICE(tq->tq_pri));

 wake_up_process(tqt->tqt_thread);

 return (tqt);
}
