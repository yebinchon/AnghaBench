
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int link; } ;
struct sway_idle_inhibitor_v1 {int manager; TYPE_1__ destroy; int link; } ;


 int free (struct sway_idle_inhibitor_v1*) ;
 int sway_idle_inhibit_v1_check_active (int ) ;
 int wl_list_remove (int *) ;

__attribute__((used)) static void destroy_inhibitor(struct sway_idle_inhibitor_v1 *inhibitor) {
 wl_list_remove(&inhibitor->link);
 wl_list_remove(&inhibitor->destroy.link);
 sway_idle_inhibit_v1_check_active(inhibitor->manager);
 free(inhibitor);
}
