
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_tablet {int link; } ;


 int free (struct sway_tablet*) ;
 int wl_list_remove (int *) ;

void sway_tablet_destroy(struct sway_tablet *tablet) {
 if (!tablet) {
  return;
 }
 wl_list_remove(&tablet->link);
 free(tablet);
}
