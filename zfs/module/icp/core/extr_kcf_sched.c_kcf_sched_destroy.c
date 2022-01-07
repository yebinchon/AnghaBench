
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int kcf_reqid_table_t ;
typedef int kcf_pool_t ;
typedef int kcf_global_swq_t ;
struct TYPE_5__ {int gs_cv; int gs_lock; int rt_lock; int kp_user_cv; int kp_user_lock; int kp_nothr_cv; int kp_thread_lock; } ;


 int REQID_TABLES ;
 int cv_destroy (int *) ;
 TYPE_1__* gswq ;
 scalar_t__ kcf_areq_cache ;
 scalar_t__ kcf_context_cache ;
 scalar_t__ kcf_misc_kstat ;
 TYPE_1__** kcf_reqid_table ;
 scalar_t__ kcf_sreq_cache ;
 TYPE_1__* kcfpool ;
 int kmem_cache_destroy (scalar_t__) ;
 int kmem_free (TYPE_1__*,int) ;
 int kstat_delete (scalar_t__) ;
 int mutex_destroy (int *) ;
 int ntfy_list_cv ;
 int ntfy_list_lock ;

void
kcf_sched_destroy(void)
{
 int i;

 if (kcf_misc_kstat)
  kstat_delete(kcf_misc_kstat);

 if (kcfpool) {
  mutex_destroy(&kcfpool->kp_thread_lock);
  cv_destroy(&kcfpool->kp_nothr_cv);
  mutex_destroy(&kcfpool->kp_user_lock);
  cv_destroy(&kcfpool->kp_user_cv);

  kmem_free(kcfpool, sizeof (kcf_pool_t));
 }

 for (i = 0; i < REQID_TABLES; i++) {
  if (kcf_reqid_table[i]) {
   mutex_destroy(&(kcf_reqid_table[i]->rt_lock));
   kmem_free(kcf_reqid_table[i],
       sizeof (kcf_reqid_table_t));
  }
 }

 if (gswq) {
  mutex_destroy(&gswq->gs_lock);
  cv_destroy(&gswq->gs_cv);
  kmem_free(gswq, sizeof (kcf_global_swq_t));
 }

 if (kcf_context_cache)
  kmem_cache_destroy(kcf_context_cache);
 if (kcf_areq_cache)
  kmem_cache_destroy(kcf_areq_cache);
 if (kcf_sreq_cache)
  kmem_cache_destroy(kcf_sreq_cache);

 mutex_destroy(&ntfy_list_lock);
 cv_destroy(&ntfy_list_cv);
}
