
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * dnode_cache ;
 int * dnode_ksp ;
 int kmem_cache_destroy (int *) ;
 int kstat_delete (int *) ;

void
dnode_fini(void)
{
 if (dnode_ksp != ((void*)0)) {
  kstat_delete(dnode_ksp);
  dnode_ksp = ((void*)0);
 }

 kmem_cache_destroy(dnode_cache);
 dnode_cache = ((void*)0);
}
