
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INIT_LIST_HEAD (int *) ;
 int INT_MAX ;
 int TASKQ_DYNAMIC ;
 int TASKQ_PREPOPULATE ;
 int init_rwsem (int *) ;
 int maxclsyspri ;
 int spl_kmem_cache_kmem_threads ;
 int spl_kmem_cache_list ;
 int spl_kmem_cache_sem ;
 int spl_kmem_cache_shrinker ;
 int spl_kmem_cache_taskq ;
 int spl_register_shrinker (int *) ;
 int taskq_create (char*,int,int ,int,int ,int) ;

int
spl_kmem_cache_init(void)
{
 init_rwsem(&spl_kmem_cache_sem);
 INIT_LIST_HEAD(&spl_kmem_cache_list);
 spl_kmem_cache_taskq = taskq_create("spl_kmem_cache",
     spl_kmem_cache_kmem_threads, maxclsyspri,
     spl_kmem_cache_kmem_threads * 8, INT_MAX,
     TASKQ_PREPOPULATE | TASKQ_DYNAMIC);
 spl_register_shrinker(&spl_kmem_cache_shrinker);

 return (0);
}
