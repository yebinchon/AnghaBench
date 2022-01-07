
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int malloc_zone_t ;


 int zone_force_unlock (int *) ;

__attribute__((used)) static void
zone_reinit_lock(malloc_zone_t *zone) {


 zone_force_unlock(zone);
}
