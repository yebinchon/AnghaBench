
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wlr_idle {int dummy; } ;
struct wl_display {int dummy; } ;
struct TYPE_6__ {int notify; } ;
struct sway_idle_inhibit_manager_v1 {int inhibitors; TYPE_3__ new_idle_inhibitor_v1; TYPE_2__* wlr_manager; struct wlr_idle* idle; } ;
struct TYPE_4__ {int new_inhibitor; } ;
struct TYPE_5__ {TYPE_1__ events; } ;


 struct sway_idle_inhibit_manager_v1* calloc (int,int) ;
 int free (struct sway_idle_inhibit_manager_v1*) ;
 int handle_idle_inhibitor_v1 ;
 int wl_list_init (int *) ;
 int wl_signal_add (int *,TYPE_3__*) ;
 TYPE_2__* wlr_idle_inhibit_v1_create (struct wl_display*) ;

struct sway_idle_inhibit_manager_v1 *sway_idle_inhibit_manager_v1_create(
  struct wl_display *wl_display, struct wlr_idle *idle) {
 struct sway_idle_inhibit_manager_v1 *manager =
  calloc(1, sizeof(struct sway_idle_inhibit_manager_v1));
 if (!manager) {
  return ((void*)0);
 }

 manager->wlr_manager = wlr_idle_inhibit_v1_create(wl_display);
 if (!manager->wlr_manager) {
  free(manager);
  return ((void*)0);
 }
 manager->idle = idle;
 wl_signal_add(&manager->wlr_manager->events.new_inhibitor,
  &manager->new_idle_inhibitor_v1);
 manager->new_idle_inhibitor_v1.notify = handle_idle_inhibitor_v1;
 wl_list_init(&manager->inhibitors);

 return manager;
}
