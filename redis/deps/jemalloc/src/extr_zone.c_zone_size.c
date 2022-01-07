
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int malloc_zone_t ;


 size_t ivsalloc (int ,void const*) ;
 int tsdn_fetch () ;

__attribute__((used)) static size_t
zone_size(malloc_zone_t *zone, const void *ptr) {
 return ivsalloc(tsdn_fetch(), ptr);
}
