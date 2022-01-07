
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _malloc_zone_t {int dummy; } ;


 void* je_malloc (size_t) ;

__attribute__((used)) static unsigned
zone_batch_malloc(struct _malloc_zone_t *zone, size_t size, void **results,
    unsigned num_requested) {
 unsigned i;

 for (i = 0; i < num_requested; i++) {
  results[i] = je_malloc(size);
  if (!results[i])
   break;
 }

 return i;
}
