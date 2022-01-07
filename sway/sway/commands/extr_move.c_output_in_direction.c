
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wlr_output {struct sway_output* data; } ;
struct sway_workspace {struct sway_output* output; } ;
struct sway_output {int wlr_output; } ;
typedef int names ;
typedef enum wlr_direction { ____Placeholder_wlr_direction } wlr_direction ;
struct TYPE_4__ {int seat; } ;
struct TYPE_6__ {TYPE_1__ handler_context; } ;
struct TYPE_5__ {int output_layout; } ;


 int WLR_DIRECTION_DOWN ;
 int WLR_DIRECTION_LEFT ;
 int WLR_DIRECTION_RIGHT ;
 int WLR_DIRECTION_UP ;
 TYPE_3__* config ;
 int opposite_direction (int) ;
 struct sway_output* output_by_name_or_id (char const*) ;
 TYPE_2__* root ;
 struct sway_workspace* seat_get_focused_workspace (int ) ;
 scalar_t__ strcasecmp (char const*,char const*) ;
 struct wlr_output* wlr_output_layout_adjacent_output (int ,int,int ,int,int) ;
 struct wlr_output* wlr_output_layout_farthest_output (int ,int ,int ,int,int) ;

__attribute__((used)) static struct sway_output *output_in_direction(const char *direction_string,
  struct sway_output *reference, int ref_lx, int ref_ly) {
 if (strcasecmp(direction_string, "current") == 0) {
  struct sway_workspace *active_ws =
   seat_get_focused_workspace(config->handler_context.seat);
  if (!active_ws) {
   return ((void*)0);
  }
  return active_ws->output;
 }

 struct {
  char *name;
  enum wlr_direction direction;
 } names[] = {
  { "up", WLR_DIRECTION_UP },
  { "down", WLR_DIRECTION_DOWN },
  { "left", WLR_DIRECTION_LEFT },
  { "right", WLR_DIRECTION_RIGHT },
 };

 enum wlr_direction direction = 0;

 for (size_t i = 0; i < sizeof(names) / sizeof(names[0]); ++i) {
  if (strcasecmp(names[i].name, direction_string) == 0) {
   direction = names[i].direction;
   break;
  }
 }

 if (reference && direction) {
  struct wlr_output *target = wlr_output_layout_adjacent_output(
    root->output_layout, direction, reference->wlr_output,
    ref_lx, ref_ly);

  if (!target) {
   target = wlr_output_layout_farthest_output(
     root->output_layout, opposite_direction(direction),
     reference->wlr_output, ref_lx, ref_ly);
  }

  if (target) {
   return target->data;
  }
 }

 return output_by_name_or_id(direction_string);
}
