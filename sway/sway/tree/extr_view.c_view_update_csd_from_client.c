
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_view {int using_csd; struct sway_container* container; } ;
struct sway_container {scalar_t__ border; scalar_t__ saved_border; } ;


 scalar_t__ B_CSD ;
 int SWAY_DEBUG ;
 scalar_t__ container_is_floating (struct sway_container*) ;
 int sway_log (int ,char*,struct sway_view*,int) ;

void view_update_csd_from_client(struct sway_view *view, bool enabled) {
 sway_log(SWAY_DEBUG, "View %p updated CSD to %i", view, enabled);
 struct sway_container *con = view->container;
 if (enabled && con && con->border != B_CSD) {
  con->saved_border = con->border;
  if (container_is_floating(con)) {
   con->border = B_CSD;
  }
 } else if (!enabled && con && con->border == B_CSD) {
  con->border = con->saved_border;
 }
 view->using_csd = enabled;
}
