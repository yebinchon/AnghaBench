
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wlr_output {int dummy; } ;
struct sway_workspace {TYPE_2__* output; } ;
struct sway_seat {int dummy; } ;
struct sway_output {int node; } ;
struct cmd_results {int dummy; } ;
typedef enum wlr_direction { ____Placeholder_wlr_direction } wlr_direction ;
struct TYPE_4__ {int lx; int width; int ly; int height; int wlr_output; } ;
struct TYPE_3__ {int output_layout; } ;


 int CMD_FAILURE ;
 int CMD_INVALID ;
 int CMD_SUCCESS ;
 struct cmd_results* cmd_results_new (int ,char*) ;
 int free (char*) ;
 char* join_args (char**,int) ;
 int opposite_direction (int) ;
 struct sway_output* output_by_name_or_id (char*) ;
 struct sway_output* output_from_wlr_output (struct wlr_output*) ;
 struct sway_output* output_get_in_direction (TYPE_2__*,int) ;
 int parse_direction (char*,int*) ;
 TYPE_1__* root ;
 int seat_consider_warp_to_focus (struct sway_seat*) ;
 int seat_get_focus_inactive (struct sway_seat*,int *) ;
 struct sway_workspace* seat_get_focused_workspace (struct sway_seat*) ;
 int seat_set_focus (struct sway_seat*,int ) ;
 struct wlr_output* wlr_output_layout_farthest_output (int ,int ,int ,int,int) ;

__attribute__((used)) static struct cmd_results *focus_output(struct sway_seat *seat,
  int argc, char **argv) {
 if (!argc) {
  return cmd_results_new(CMD_INVALID,
   "Expected 'focus output <direction|name>'");
 }
 char *identifier = join_args(argv, argc);
 struct sway_output *output = output_by_name_or_id(identifier);

 if (!output) {
  enum wlr_direction direction;
  if (!parse_direction(identifier, &direction)) {
   free(identifier);
   return cmd_results_new(CMD_INVALID,
    "There is no output with that name");
  }
  struct sway_workspace *ws = seat_get_focused_workspace(seat);
  if (!ws) {
   free(identifier);
   return cmd_results_new(CMD_FAILURE,
    "No focused workspace to base directions off of");
  }
  output = output_get_in_direction(ws->output, direction);

  if (!output) {
   int center_lx = ws->output->lx + ws->output->width / 2;
   int center_ly = ws->output->ly + ws->output->height / 2;
   struct wlr_output *target = wlr_output_layout_farthest_output(
     root->output_layout, opposite_direction(direction),
     ws->output->wlr_output, center_lx, center_ly);
   if (target) {
    output = output_from_wlr_output(target);
   }
  }
 }

 free(identifier);
 if (output) {
  seat_set_focus(seat, seat_get_focus_inactive(seat, &output->node));
  seat_consider_warp_to_focus(seat);
 }

 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
