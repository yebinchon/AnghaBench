
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_idle_inhibitor_v1 {scalar_t__ mode; } ;


 scalar_t__ INHIBIT_IDLE_APPLICATION ;
 int destroy_inhibitor (struct sway_idle_inhibitor_v1*) ;
 int sway_assert (int,char*) ;

void sway_idle_inhibit_v1_user_inhibitor_destroy(
  struct sway_idle_inhibitor_v1 *inhibitor) {
 if (!inhibitor) {
  return;
 }
 if (!sway_assert(inhibitor->mode != INHIBIT_IDLE_APPLICATION,
    "User should not be able to destroy application inhibitor")) {
  return;
 }
 destroy_inhibitor(inhibitor);
}
