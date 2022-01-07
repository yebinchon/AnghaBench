
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl_listener {int dummy; } ;
struct sway_idle_inhibitor_v1 {int dummy; } ;


 int SWAY_DEBUG ;
 int destroy ;
 int destroy_inhibitor (struct sway_idle_inhibitor_v1*) ;
 struct sway_idle_inhibitor_v1* inhibitor ;
 int sway_log (int ,char*) ;
 struct sway_idle_inhibitor_v1* wl_container_of (struct wl_listener*,int ,int ) ;

__attribute__((used)) static void handle_destroy(struct wl_listener *listener, void *data) {
 struct sway_idle_inhibitor_v1 *inhibitor =
  wl_container_of(listener, inhibitor, destroy);
 sway_log(SWAY_DEBUG, "Sway idle inhibitor destroyed");
 destroy_inhibitor(inhibitor);
}
