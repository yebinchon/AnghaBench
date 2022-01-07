
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_11__ ;
typedef struct TYPE_16__ TYPE_10__ ;


typedef scalar_t__ uint32_t ;
struct sway_workspace {char const* name; } ;
struct sway_view {struct sway_container* container; } ;
struct sway_seat {int dummy; } ;
struct TYPE_23__ {scalar_t__ id; } ;
struct sway_container {struct sway_workspace* workspace; TYPE_6__ node; TYPE_4__* marks; struct sway_view* view; } ;
struct criteria {scalar_t__ con_id; scalar_t__ id; scalar_t__ window_type; char urgent; TYPE_10__* workspace; scalar_t__ tiling; scalar_t__ floating; TYPE_9__* window_role; TYPE_8__* instance; TYPE_7__* class; TYPE_5__* con_mark; TYPE_3__* app_id; TYPE_2__* shell; TYPE_1__* title; } ;
struct TYPE_17__ {int length; struct sway_view** items; } ;
typedef TYPE_11__ list_t ;
struct TYPE_26__ {int match_type; int regex; } ;
struct TYPE_25__ {int match_type; int regex; } ;
struct TYPE_24__ {int match_type; int regex; } ;
struct TYPE_22__ {int regex; } ;
struct TYPE_21__ {int length; char const** items; } ;
struct TYPE_20__ {int match_type; int regex; } ;
struct TYPE_19__ {int match_type; int regex; } ;
struct TYPE_18__ {int match_type; int regex; } ;
struct TYPE_16__ {int match_type; int regex; } ;


 scalar_t__ ATOM_LAST ;


 int cmp_urgent ;
 scalar_t__ container_is_floating (struct sway_container*) ;
 TYPE_11__* create_list () ;
 int find_urgent_iterator ;
 struct sway_seat* input_manager_current_seat () ;
 int list_free (TYPE_11__*) ;
 int list_stable_sort (TYPE_11__*,int ) ;
 scalar_t__ regex_cmp (char const*,int ) ;
 int root_for_each_container (int ,TYPE_11__*) ;
 struct sway_container* seat_get_focused_container (struct sway_seat*) ;
 int strcmp (char const*,char*) ;
 char* view_get_app_id (struct sway_view*) ;
 char* view_get_class (struct sway_view*) ;
 char* view_get_instance (struct sway_view*) ;
 char* view_get_shell (struct sway_view*) ;
 char* view_get_title (struct sway_view*) ;
 char* view_get_window_role (struct sway_view*) ;
 scalar_t__ view_get_x11_window_id (struct sway_view*) ;
 int view_has_window_type (struct sway_view*,scalar_t__) ;
 int view_is_urgent (struct sway_view*) ;

__attribute__((used)) static bool criteria_matches_view(struct criteria *criteria,
  struct sway_view *view) {
 struct sway_seat *seat = input_manager_current_seat();
 struct sway_container *focus = seat_get_focused_container(seat);
 struct sway_view *focused = focus ? focus->view : ((void*)0);

 if (criteria->title) {
  const char *title = view_get_title(view);
  if (!title) {
   return 0;
  }

  switch (criteria->title->match_type) {
  case 129:
   if (focused && strcmp(title, view_get_title(focused))) {
    return 0;
   }
   break;
  case 128:
   if (regex_cmp(title, criteria->title->regex) != 0) {
    return 0;
   }
   break;
  }
 }

 if (criteria->shell) {
  const char *shell = view_get_shell(view);
  if (!shell) {
   return 0;
  }

  switch (criteria->shell->match_type) {
  case 129:
   if (focused && strcmp(shell, view_get_shell(focused))) {
    return 0;
   }
   break;
  case 128:
   if (regex_cmp(shell, criteria->shell->regex) != 0) {
    return 0;
   }
   break;
  }
 }

 if (criteria->app_id) {
  const char *app_id = view_get_app_id(view);
  if (!app_id) {
   return 0;
  }

  switch (criteria->app_id->match_type) {
  case 129:
   if (focused && strcmp(app_id, view_get_app_id(focused))) {
    return 0;
   }
   break;
  case 128:
   if (regex_cmp(app_id, criteria->app_id->regex) != 0) {
    return 0;
   }
   break;
  }
 }

 if (criteria->con_mark) {
  bool exists = 0;
  struct sway_container *con = view->container;
  for (int i = 0; i < con->marks->length; ++i) {
   if (regex_cmp(con->marks->items[i], criteria->con_mark->regex) == 0) {
    exists = 1;
    break;
   }
  }
  if (!exists) {
   return 0;
  }
 }

 if (criteria->con_id) {
  if (!view->container || view->container->node.id != criteria->con_id) {
   return 0;
  }
 }
 if (criteria->floating) {
  if (!container_is_floating(view->container)) {
   return 0;
  }
 }

 if (criteria->tiling) {
  if (container_is_floating(view->container)) {
   return 0;
  }
 }

 if (criteria->urgent) {
  if (!view_is_urgent(view)) {
   return 0;
  }
  list_t *urgent_views = create_list();
  root_for_each_container(find_urgent_iterator, urgent_views);
  list_stable_sort(urgent_views, cmp_urgent);
  struct sway_view *target;
  if (criteria->urgent == 'o') {
   target = urgent_views->items[0];
  } else {
   target = urgent_views->items[urgent_views->length - 1];
  }
  list_free(urgent_views);
  if (view != target) {
   return 0;
  }
 }

 if (criteria->workspace) {
  struct sway_workspace *ws = view->container->workspace;
  if (!ws) {
   return 0;
  }

  switch (criteria->workspace->match_type) {
  case 129:
   if (focused &&
     strcmp(ws->name, focused->container->workspace->name)) {
    return 0;
   }
   break;
  case 128:
   if (regex_cmp(ws->name, criteria->workspace->regex) != 0) {
    return 0;
   }
   break;
  }
 }

 return 1;
}
