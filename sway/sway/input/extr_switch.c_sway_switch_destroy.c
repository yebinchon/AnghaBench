
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int link; } ;
struct sway_switch {TYPE_1__ switch_toggle; } ;


 int free (struct sway_switch*) ;
 int wl_list_remove (int *) ;

void sway_switch_destroy(struct sway_switch *sway_switch) {
 if (!sway_switch) {
  return;
 }
 wl_list_remove(&sway_switch->switch_toggle.link);
 free(sway_switch);
}
