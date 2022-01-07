
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int malloc_zone_t ;


 int free (void*) ;
 scalar_t__ ivsalloc (int ,void*) ;
 int je_free (void*) ;
 int tsdn_fetch () ;

__attribute__((used)) static void
zone_free(malloc_zone_t *zone, void *ptr) {
 if (ivsalloc(tsdn_fetch(), ptr) != 0) {
  je_free(ptr);
  return;
 }

 free(ptr);
}
