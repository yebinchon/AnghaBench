
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int destroy; } ;
struct wlr_idle_inhibitor_v1 {TYPE_1__ events; int surface; } ;
struct wl_listener {int dummy; } ;
struct TYPE_4__ {int notify; } ;
struct sway_idle_inhibitor_v1 {TYPE_2__ destroy; int link; int view; int mode; struct sway_idle_inhibit_manager_v1* manager; } ;
struct sway_idle_inhibit_manager_v1 {int inhibitors; } ;


 int INHIBIT_IDLE_APPLICATION ;
 int SWAY_DEBUG ;
 struct sway_idle_inhibitor_v1* calloc (int,int) ;
 int handle_destroy ;
 struct sway_idle_inhibit_manager_v1* manager ;
 int new_idle_inhibitor_v1 ;
 int sway_idle_inhibit_v1_check_active (struct sway_idle_inhibit_manager_v1*) ;
 int sway_log (int ,char*) ;
 int view_from_wlr_surface (int ) ;
 struct sway_idle_inhibit_manager_v1* wl_container_of (struct wl_listener*,int ,int ) ;
 int wl_list_insert (int *,int *) ;
 int wl_signal_add (int *,TYPE_2__*) ;

void handle_idle_inhibitor_v1(struct wl_listener *listener, void *data) {
 struct wlr_idle_inhibitor_v1 *wlr_inhibitor = data;
 struct sway_idle_inhibit_manager_v1 *manager =
  wl_container_of(listener, manager, new_idle_inhibitor_v1);
 sway_log(SWAY_DEBUG, "New sway idle inhibitor");

 struct sway_idle_inhibitor_v1 *inhibitor =
  calloc(1, sizeof(struct sway_idle_inhibitor_v1));
 if (!inhibitor) {
  return;
 }

 inhibitor->manager = manager;
 inhibitor->mode = INHIBIT_IDLE_APPLICATION;
 inhibitor->view = view_from_wlr_surface(wlr_inhibitor->surface);
 wl_list_insert(&manager->inhibitors, &inhibitor->link);

 inhibitor->destroy.notify = handle_destroy;
 wl_signal_add(&wlr_inhibitor->events.destroy, &inhibitor->destroy);

 sway_idle_inhibit_v1_check_active(manager);
}
