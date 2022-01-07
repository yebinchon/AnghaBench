
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int unmap; } ;
struct sway_view {TYPE_1__ events; } ;
struct TYPE_6__ {int notify; } ;
struct sway_idle_inhibitor_v1 {int mode; TYPE_3__* manager; TYPE_2__ destroy; int link; struct sway_view* view; } ;
typedef enum sway_idle_inhibit_mode { ____Placeholder_sway_idle_inhibit_mode } sway_idle_inhibit_mode ;
struct TYPE_8__ {TYPE_3__* idle_inhibit_manager_v1; } ;
struct TYPE_7__ {int inhibitors; } ;


 struct sway_idle_inhibitor_v1* calloc (int,int) ;
 int handle_destroy ;
 TYPE_4__ server ;
 int sway_idle_inhibit_v1_check_active (TYPE_3__*) ;
 int wl_list_insert (int *,int *) ;
 int wl_signal_add (int *,TYPE_2__*) ;

void sway_idle_inhibit_v1_user_inhibitor_register(struct sway_view *view,
  enum sway_idle_inhibit_mode mode) {
 struct sway_idle_inhibitor_v1 *inhibitor =
  calloc(1, sizeof(struct sway_idle_inhibitor_v1));
 if (!inhibitor) {
  return;
 }

 inhibitor->manager = server.idle_inhibit_manager_v1;
 inhibitor->mode = mode;
 inhibitor->view = view;
 wl_list_insert(&inhibitor->manager->inhibitors, &inhibitor->link);

 inhibitor->destroy.notify = handle_destroy;
 wl_signal_add(&view->events.unmap, &inhibitor->destroy);

 sway_idle_inhibit_v1_check_active(inhibitor->manager);
}
