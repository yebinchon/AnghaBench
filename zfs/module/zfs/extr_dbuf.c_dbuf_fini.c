
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hash_table_mask; int hash_table; int * hash_mutexes; } ;
typedef TYPE_1__ dbuf_hash_table_t ;
typedef size_t dbuf_cached_state_t ;
struct TYPE_5__ {int cache; int size; } ;


 scalar_t__ B_TRUE ;
 int DBUF_MUTEXES ;
 size_t DB_CACHE_MAX ;
 int cv_destroy (int *) ;
 int cv_signal (int *) ;
 int cv_wait (int *,int *) ;
 int dbu_evict_taskq ;
 TYPE_3__* dbuf_caches ;
 int dbuf_evict_cv ;
 int dbuf_evict_lock ;
 scalar_t__ dbuf_evict_thread_exit ;
 TYPE_1__ dbuf_hash_table ;
 int dbuf_kmem_cache ;
 int * dbuf_ksp ;
 int dbuf_stats_destroy () ;
 int kmem_cache_destroy (int ) ;
 int kmem_free (int ,int) ;
 int kstat_delete (int *) ;
 int multilist_destroy (int ) ;
 int mutex_destroy (int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int taskq_destroy (int ) ;
 int vmem_free (int ,int) ;
 int zfs_refcount_destroy (int *) ;

void
dbuf_fini(void)
{
 dbuf_hash_table_t *h = &dbuf_hash_table;
 int i;

 dbuf_stats_destroy();

 for (i = 0; i < DBUF_MUTEXES; i++)
  mutex_destroy(&h->hash_mutexes[i]);







 kmem_free(h->hash_table, (h->hash_table_mask + 1) * sizeof (void *));

 kmem_cache_destroy(dbuf_kmem_cache);
 taskq_destroy(dbu_evict_taskq);

 mutex_enter(&dbuf_evict_lock);
 dbuf_evict_thread_exit = B_TRUE;
 while (dbuf_evict_thread_exit) {
  cv_signal(&dbuf_evict_cv);
  cv_wait(&dbuf_evict_cv, &dbuf_evict_lock);
 }
 mutex_exit(&dbuf_evict_lock);

 mutex_destroy(&dbuf_evict_lock);
 cv_destroy(&dbuf_evict_cv);

 for (dbuf_cached_state_t dcs = 0; dcs < DB_CACHE_MAX; dcs++) {
  zfs_refcount_destroy(&dbuf_caches[dcs].size);
  multilist_destroy(dbuf_caches[dcs].cache);
 }

 if (dbuf_ksp != ((void*)0)) {
  kstat_delete(dbuf_ksp);
  dbuf_ksp = ((void*)0);
 }
}
