
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int region; } ;
struct wlr_pointer_constraint_v1 {TYPE_3__* surface; int region; TYPE_1__ current; } ;
struct TYPE_8__ {int notify; int link; } ;
struct sway_cursor {TYPE_4__ constraint_commit; struct wlr_pointer_constraint_v1* active_constraint; int seat; } ;
struct seat_config {scalar_t__ allow_constrain; } ;
struct TYPE_6__ {int commit; } ;
struct TYPE_7__ {TYPE_2__ events; int input_region; } ;


 scalar_t__ CONSTRAIN_DISABLE ;
 int check_constraint_region (struct sway_cursor*) ;
 int handle_constraint_commit ;
 int pixman_region32_copy (int *,int *) ;
 int pixman_region32_intersect (int *,int *,int *) ;
 scalar_t__ pixman_region32_not_empty (int *) ;
 struct seat_config* seat_get_config (int ) ;
 struct seat_config* seat_get_config_by_name (char*) ;
 int warp_to_constraint_cursor_hint (struct sway_cursor*) ;
 int wl_list_init (int *) ;
 int wl_list_remove (int *) ;
 int wl_signal_add (int *,TYPE_4__*) ;
 int wlr_pointer_constraint_v1_send_activated (struct wlr_pointer_constraint_v1*) ;
 int wlr_pointer_constraint_v1_send_deactivated (struct wlr_pointer_constraint_v1*) ;

void sway_cursor_constrain(struct sway_cursor *cursor,
  struct wlr_pointer_constraint_v1 *constraint) {
 struct seat_config *config = seat_get_config(cursor->seat);
 if (!config) {
  config = seat_get_config_by_name("*");
 }

 if (!config || config->allow_constrain == CONSTRAIN_DISABLE) {
  return;
 }

 if (cursor->active_constraint == constraint) {
  return;
 }

 wl_list_remove(&cursor->constraint_commit.link);
 if (cursor->active_constraint) {
  if (constraint == ((void*)0)) {
   warp_to_constraint_cursor_hint(cursor);
  }
  wlr_pointer_constraint_v1_send_deactivated(
   cursor->active_constraint);
 }

 cursor->active_constraint = constraint;

 if (constraint == ((void*)0)) {
  wl_list_init(&cursor->constraint_commit.link);
  return;
 }






 if (pixman_region32_not_empty(&constraint->current.region)) {
  pixman_region32_intersect(&constraint->region,
   &constraint->surface->input_region, &constraint->current.region);
 } else {
  pixman_region32_copy(&constraint->region,
   &constraint->surface->input_region);
 }

 check_constraint_region(cursor);

 wlr_pointer_constraint_v1_send_activated(constraint);

 cursor->constraint_commit.notify = handle_constraint_commit;
 wl_signal_add(&constraint->surface->events.commit,
  &cursor->constraint_commit);
}
