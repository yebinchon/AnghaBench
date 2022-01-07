
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_address_t ;
typedef int malloc_zone_t ;


 scalar_t__ KERN_SUCCESS ;
 int * malloc_default_zone () ;
 scalar_t__ malloc_get_all_zones (int ,int *,int **,unsigned int*) ;

__attribute__((used)) static malloc_zone_t *
zone_default_get(void) {
 malloc_zone_t **zones = ((void*)0);
 unsigned int num_zones = 0;
 if (KERN_SUCCESS != malloc_get_all_zones(0, ((void*)0),
     (vm_address_t**)&zones, &num_zones)) {




  num_zones = 0;
 }

 if (num_zones) {
  return zones[0];
 }

 return malloc_default_zone();
}
