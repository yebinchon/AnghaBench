
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int malloc_zone_t ;


 int assert (int) ;
 int free (void*) ;
 size_t ivsalloc (int ,void*) ;
 int je_free (void*) ;
 int tsdn_fetch () ;

__attribute__((used)) static void
zone_free_definite_size(malloc_zone_t *zone, void *ptr, size_t size) {
 size_t alloc_size;

 alloc_size = ivsalloc(tsdn_fetch(), ptr);
 if (alloc_size != 0) {
  assert(alloc_size == size);
  je_free(ptr);
  return;
 }

 free(ptr);
}
