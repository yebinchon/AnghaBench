
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sway_node {scalar_t__ destroying; } ;
struct sway_workspace {struct sway_container* fullscreen; struct sway_node node; } ;
struct sway_view {struct sway_container* container; } ;
struct sway_seat {int dummy; } ;
struct sway_container {scalar_t__ fullscreen_mode; struct sway_container* parent; struct sway_node node; struct sway_workspace* workspace; int is_sticky; } ;
typedef enum sway_container_layout { ____Placeholder_sway_container_layout } sway_container_layout ;
struct TYPE_2__ {struct sway_container* fullscreen_global; } ;


 scalar_t__ FULLSCREEN_GLOBAL ;
 int L_STACKED ;
 int L_TABBED ;
 scalar_t__ container_is_floating (struct sway_container*) ;
 int container_is_fullscreen_or_child (struct sway_container*) ;
 int container_is_transient_for (struct sway_container*,struct sway_container*) ;
 int container_parent_layout (struct sway_container*) ;
 struct sway_seat* input_manager_current_seat () ;
 TYPE_1__* root ;
 struct sway_node* seat_get_active_tiling_child (struct sway_seat*,struct sway_node*) ;
 int workspace_is_visible (struct sway_workspace*) ;

bool view_is_visible(struct sway_view *view) {
 if (view->container->node.destroying) {
  return 0;
 }
 struct sway_workspace *workspace = view->container->workspace;
 if (!workspace && view->container->fullscreen_mode != FULLSCREEN_GLOBAL) {
  bool fs_global_descendant = 0;
  struct sway_container *parent = view->container->parent;
  while (parent) {
   if (parent->fullscreen_mode == FULLSCREEN_GLOBAL) {
    fs_global_descendant = 1;
   }
   parent = parent->parent;
  }
  if (!fs_global_descendant) {
   return 0;
  }
 }

 struct sway_container *floater = view->container;
 while (floater->parent) {
  floater = floater->parent;
 }
 bool is_sticky = container_is_floating(floater) && floater->is_sticky;
 if (!is_sticky && workspace && !workspace_is_visible(workspace)) {
  return 0;
 }

 struct sway_seat *seat = input_manager_current_seat();
 struct sway_container *con = view->container;
 while (con) {
  enum sway_container_layout layout = container_parent_layout(con);
  if ((layout == L_TABBED || layout == L_STACKED)
    && !container_is_floating(con)) {
   struct sway_node *parent = con->parent ?
    &con->parent->node : &con->workspace->node;
   if (seat_get_active_tiling_child(seat, parent) != &con->node) {
    return 0;
   }
  }
  con = con->parent;
 }

 struct sway_container *fs = root->fullscreen_global ?
  root->fullscreen_global : workspace->fullscreen;
 if (fs && !container_is_fullscreen_or_child(view->container) &&
   !container_is_transient_for(view->container, fs)) {
  return 0;
 }
 return 1;
}
