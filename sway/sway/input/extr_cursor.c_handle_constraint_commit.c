
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlr_pointer_constraint_v1 {void* surface; } ;
struct wl_listener {int dummy; } ;
struct sway_cursor {struct wlr_pointer_constraint_v1* active_constraint; } ;


 int assert (int) ;
 int check_constraint_region (struct sway_cursor*) ;
 int constraint_commit ;
 struct sway_cursor* cursor ;
 struct sway_cursor* wl_container_of (struct wl_listener*,int ,int ) ;

__attribute__((used)) static void handle_constraint_commit(struct wl_listener *listener,
  void *data) {
 struct sway_cursor *cursor =
  wl_container_of(listener, cursor, constraint_commit);
 struct wlr_pointer_constraint_v1 *constraint = cursor->active_constraint;
 assert(constraint->surface == data);

 check_constraint_region(cursor);
}
