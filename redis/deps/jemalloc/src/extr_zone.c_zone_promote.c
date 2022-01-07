
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int malloc_zone_t ;


 int * default_zone ;
 int jemalloc_zone ;
 int malloc_zone_register (int *) ;
 int malloc_zone_unregister (int *) ;
 int * purgeable_zone ;
 int * zone_default_get () ;

__attribute__((used)) static void
zone_promote(void) {
 malloc_zone_t *zone;

 do {
  malloc_zone_unregister(default_zone);
  malloc_zone_register(default_zone);
  if (purgeable_zone != ((void*)0)) {
   malloc_zone_unregister(purgeable_zone);
   malloc_zone_register(purgeable_zone);
  }

  zone = zone_default_get();
 } while (zone != &jemalloc_zone);
}
