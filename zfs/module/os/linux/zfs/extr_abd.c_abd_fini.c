
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * abd_cache ;
 int * abd_ksp ;
 int kmem_cache_destroy (int *) ;
 int kstat_delete (int *) ;

void
abd_fini(void)
{
 if (abd_ksp != ((void*)0)) {
  kstat_delete(abd_ksp);
  abd_ksp = ((void*)0);
 }

 if (abd_cache) {
  kmem_cache_destroy(abd_cache);
  abd_cache = ((void*)0);
 }
}
