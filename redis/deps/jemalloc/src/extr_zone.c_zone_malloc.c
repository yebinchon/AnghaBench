
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int malloc_zone_t ;


 void* je_malloc (size_t) ;

__attribute__((used)) static void *
zone_malloc(malloc_zone_t *zone, size_t size) {
 return je_malloc(size);
}
