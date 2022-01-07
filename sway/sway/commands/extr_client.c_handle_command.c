
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sway_output {int dummy; } ;
struct cmd_results {int dummy; } ;
struct border_colors {int child_border; int indicator; int text; int background; int border; } ;
struct TYPE_6__ {scalar_t__ active; } ;
struct TYPE_5__ {TYPE_1__* outputs; } ;
struct TYPE_4__ {int length; struct sway_output** items; } ;


 int CMD_INVALID ;
 int CMD_SUCCESS ;
 int EXPECTED_EQUAL_TO ;
 struct cmd_results* checkarg (int,char*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,char*,...) ;
 TYPE_3__* config ;
 int output_damage_whole (struct sway_output*) ;
 int parse_color_float (char*,int ) ;
 int rebuild_textures_iterator ;
 TYPE_2__* root ;
 int root_for_each_container (int ,int *) ;

__attribute__((used)) static struct cmd_results *handle_command(int argc, char **argv,
  struct border_colors *class, char *cmd_name) {
 struct cmd_results *error = ((void*)0);
 if ((error = checkarg(argc, cmd_name, EXPECTED_EQUAL_TO, 5))) {
  return error;
 }

 if (!parse_color_float(argv[0], class->border)) {
  return cmd_results_new(CMD_INVALID,
    "Unable to parse border color '%s'", argv[0]);
 }

 if (!parse_color_float(argv[1], class->background)) {
  return cmd_results_new(CMD_INVALID,
    "Unable to parse background color '%s'", argv[1]);
 }

 if (!parse_color_float(argv[2], class->text)) {
  return cmd_results_new(CMD_INVALID,
    "Unable to parse text color '%s'", argv[2]);
 }

 if (!parse_color_float(argv[3], class->indicator)) {
  return cmd_results_new(CMD_INVALID,
    "Unable to parse indicator color '%s'", argv[3]);
 }

 if (!parse_color_float(argv[4], class->child_border)) {
  return cmd_results_new(CMD_INVALID,
    "Unable to parse child border color '%s'", argv[4]);
 }

 if (config->active) {
  root_for_each_container(rebuild_textures_iterator, ((void*)0));

  for (int i = 0; i < root->outputs->length; ++i) {
   struct sway_output *output = root->outputs->items[i];
   output_damage_whole(output);
  }
 }

 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
