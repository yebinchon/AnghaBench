
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _malloc_zone_t {int dummy; } ;


 int zone_free (struct _malloc_zone_t*,void*) ;

__attribute__((used)) static void
zone_batch_free(struct _malloc_zone_t *zone, void **to_be_freed,
    unsigned num_to_be_freed) {
 unsigned i;

 for (i = 0; i < num_to_be_freed; i++) {
  zone_free(zone, to_be_freed[i]);
  to_be_freed[i] = ((void*)0);
 }
}
