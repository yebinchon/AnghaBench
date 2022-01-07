
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int state; } ;
typedef TYPE_1__ tsd_t ;


 scalar_t__ malloc_slow ;
 scalar_t__ tsd_nominal (TYPE_1__*) ;
 scalar_t__ tsd_reentrancy_level_get (TYPE_1__*) ;
 int tsd_state_nominal ;
 int tsd_state_nominal_slow ;
 int tsd_tcache_enabled_get (TYPE_1__*) ;

void
tsd_slow_update(tsd_t *tsd) {
 if (tsd_nominal(tsd)) {
  if (malloc_slow || !tsd_tcache_enabled_get(tsd) ||
      tsd_reentrancy_level_get(tsd) > 0) {
   tsd->state = tsd_state_nominal_slow;
  } else {
   tsd->state = tsd_state_nominal;
  }
 }
}
