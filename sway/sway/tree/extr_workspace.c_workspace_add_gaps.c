
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ top; scalar_t__ right; scalar_t__ bottom; scalar_t__ left; } ;
struct sway_workspace {scalar_t__ gaps_inner; scalar_t__ width; scalar_t__ height; TYPE_1__ current_gaps; int y; int x; TYPE_1__ gaps_outer; } ;
struct sway_seat {int dummy; } ;
struct sway_container {scalar_t__ view; int node; } ;
struct TYPE_4__ {scalar_t__ smart_gaps; } ;


 scalar_t__ MIN_SANE_H ;
 scalar_t__ MIN_SANE_W ;
 TYPE_2__* config ;
 void* fmax (int ,scalar_t__) ;
 struct sway_seat* input_manager_get_default_seat () ;
 struct sway_container* seat_get_focus_inactive_tiling (struct sway_seat*,struct sway_workspace*) ;
 struct sway_container* seat_get_focus_inactive_view (struct sway_seat*,int *) ;
 scalar_t__ view_is_only_visible (scalar_t__) ;

void workspace_add_gaps(struct sway_workspace *ws) {
 if (config->smart_gaps) {
  struct sway_seat *seat = input_manager_get_default_seat();
  struct sway_container *focus =
   seat_get_focus_inactive_tiling(seat, ws);
  if (focus && !focus->view) {
   focus = seat_get_focus_inactive_view(seat, &focus->node);
  }
  if (focus && focus->view && view_is_only_visible(focus->view)) {
   ws->current_gaps.top = 0;
   ws->current_gaps.right = 0;
   ws->current_gaps.bottom = 0;
   ws->current_gaps.left = 0;
   return;
  }
 }

 ws->current_gaps = ws->gaps_outer;

 ws->current_gaps.top = fmax(0, ws->current_gaps.top + ws->gaps_inner);
 ws->current_gaps.right = fmax(0, ws->current_gaps.right + ws->gaps_inner);
 ws->current_gaps.bottom = fmax(0, ws->current_gaps.bottom + ws->gaps_inner);
 ws->current_gaps.left = fmax(0, ws->current_gaps.left + ws->gaps_inner);



 if (ws->width - ws->current_gaps.left - ws->current_gaps.right < MIN_SANE_W
   && ws->current_gaps.left + ws->current_gaps.right > 0) {
  int total_gap = fmax(0, ws->width - MIN_SANE_W);
  double left_gap_frac = ((double)ws->current_gaps.left /
   ((double)ws->current_gaps.left + (double)ws->current_gaps.right));
  ws->current_gaps.left = left_gap_frac * total_gap;
  ws->current_gaps.right = total_gap - ws->current_gaps.left;
 }
 if (ws->height - ws->current_gaps.top - ws->current_gaps.bottom < MIN_SANE_H
   && ws->current_gaps.top + ws->current_gaps.bottom > 0) {
  int total_gap = fmax(0, ws->height - MIN_SANE_H);
  double top_gap_frac = ((double) ws->current_gaps.top /
   ((double)ws->current_gaps.top + (double)ws->current_gaps.bottom));
  ws->current_gaps.top = top_gap_frac * total_gap;
  ws->current_gaps.bottom = total_gap - ws->current_gaps.top;
 }

 ws->x += ws->current_gaps.left;
 ws->y += ws->current_gaps.top;
 ws->width -= ws->current_gaps.left + ws->current_gaps.right;
 ws->height -= ws->current_gaps.top + ws->current_gaps.bottom;
}
