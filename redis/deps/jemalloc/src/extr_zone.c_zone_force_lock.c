
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int malloc_zone_t ;


 int assert (int) ;
 int getpid () ;
 scalar_t__ isthreaded ;
 int jemalloc_prefork () ;
 int zone_force_lock_pid ;

__attribute__((used)) static void
zone_force_lock(malloc_zone_t *zone) {
 if (isthreaded) {




  assert(zone_force_lock_pid == -1);
  zone_force_lock_pid = getpid();
  jemalloc_prefork();
 }
}
