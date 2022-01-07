
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct kcf_sreq_node {int dummy; } ;
struct kcf_context {int dummy; } ;
struct kcf_areq_node {int dummy; } ;
typedef int kstat_named_t ;
typedef int kcf_stats_t ;
struct TYPE_9__ {int rt_curid; int rt_lock; } ;
typedef TYPE_1__ kcf_reqid_table_t ;
typedef int kcf_global_swq_t ;
struct TYPE_11__ {int gs_maxjobs; int * gs_last; int gs_first; scalar_t__ gs_njobs; int gs_cv; int gs_lock; } ;
struct TYPE_10__ {int ks_update; int * ks_data; } ;


 int CV_DEFAULT ;
 int KM_SLEEP ;
 int KSTAT_FLAG_VIRTUAL ;
 int KSTAT_TYPE_NAMED ;
 int MUTEX_DEFAULT ;
 int REQID_TABLES ;
 int crypto_taskq_maxalloc ;
 int cv_init (int *,int *,int ,int *) ;
 TYPE_5__* gswq ;
 void* kcf_areq_cache ;
 int kcf_areq_cache_constructor ;
 int kcf_areq_cache_destructor ;
 void* kcf_context_cache ;
 int kcf_context_cache_constructor ;
 int kcf_context_cache_destructor ;
 int kcf_ksdata ;
 int kcf_maxthreads ;
 TYPE_2__* kcf_misc_kstat ;
 int kcf_misc_kstat_update ;
 TYPE_1__** kcf_reqid_table ;
 void* kcf_sreq_cache ;
 int kcf_sreq_cache_constructor ;
 int kcf_sreq_cache_destructor ;
 int kcfpool_alloc () ;
 TYPE_5__* kmem_alloc (int,int ) ;
 void* kmem_cache_create (char*,int,int,int ,int ,int *,int *,int *,int ) ;
 TYPE_1__* kmem_zalloc (int,int ) ;
 TYPE_2__* kstat_create (char*,int ,char*,char*,int ,int,int ) ;
 int kstat_install (TYPE_2__*) ;
 int mutex_init (int *,int *,int ,int *) ;
 int ntfy_list_cv ;
 int ntfy_list_lock ;

void
kcf_sched_init(void)
{
 int i;
 kcf_reqid_table_t *rt;
 kcf_sreq_cache = kmem_cache_create("kcf_sreq_cache",
     sizeof (struct kcf_sreq_node), 64, kcf_sreq_cache_constructor,
     kcf_sreq_cache_destructor, ((void*)0), ((void*)0), ((void*)0), 0);

 kcf_areq_cache = kmem_cache_create("kcf_areq_cache",
     sizeof (struct kcf_areq_node), 64, kcf_areq_cache_constructor,
     kcf_areq_cache_destructor, ((void*)0), ((void*)0), ((void*)0), 0);

 kcf_context_cache = kmem_cache_create("kcf_context_cache",
     sizeof (struct kcf_context), 64, kcf_context_cache_constructor,
     kcf_context_cache_destructor, ((void*)0), ((void*)0), ((void*)0), 0);

 gswq = kmem_alloc(sizeof (kcf_global_swq_t), KM_SLEEP);

 mutex_init(&gswq->gs_lock, ((void*)0), MUTEX_DEFAULT, ((void*)0));
 cv_init(&gswq->gs_cv, ((void*)0), CV_DEFAULT, ((void*)0));
 gswq->gs_njobs = 0;
 gswq->gs_maxjobs = kcf_maxthreads * crypto_taskq_maxalloc;
 gswq->gs_first = gswq->gs_last = ((void*)0);


 for (i = 0; i < REQID_TABLES; i++) {
  rt = kmem_zalloc(sizeof (kcf_reqid_table_t), KM_SLEEP);
  kcf_reqid_table[i] = rt;
  mutex_init(&rt->rt_lock, ((void*)0), MUTEX_DEFAULT, ((void*)0));
  rt->rt_curid = i;
 }


 kcfpool_alloc();


 mutex_init(&ntfy_list_lock, ((void*)0), MUTEX_DEFAULT, ((void*)0));
 cv_init(&ntfy_list_cv, ((void*)0), CV_DEFAULT, ((void*)0));


 kcf_misc_kstat = kstat_create("kcf", 0, "framework_stats", "crypto",
     KSTAT_TYPE_NAMED, sizeof (kcf_stats_t) / sizeof (kstat_named_t),
     KSTAT_FLAG_VIRTUAL);

 if (kcf_misc_kstat != ((void*)0)) {
  kcf_misc_kstat->ks_data = &kcf_ksdata;
  kcf_misc_kstat->ks_update = kcf_misc_kstat_update;
  kstat_install(kcf_misc_kstat);
 }
}
