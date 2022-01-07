
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sway_output {int dummy; } ;
struct cmd_results {int dummy; } ;
struct TYPE_6__ {int title_align; } ;
struct TYPE_5__ {TYPE_1__* outputs; } ;
struct TYPE_4__ {int length; struct sway_output** items; } ;


 int ALIGN_CENTER ;
 int ALIGN_LEFT ;
 int ALIGN_RIGHT ;
 int CMD_INVALID ;
 int CMD_SUCCESS ;
 int EXPECTED_AT_LEAST ;
 struct cmd_results* checkarg (int,char*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,char*) ;
 TYPE_3__* config ;
 int output_damage_whole (struct sway_output*) ;
 TYPE_2__* root ;
 scalar_t__ strcmp (char*,char*) ;

struct cmd_results *cmd_title_align(int argc, char **argv) {
 struct cmd_results *error = ((void*)0);
 if ((error = checkarg(argc, "title_align", EXPECTED_AT_LEAST, 1))) {
  return error;
 }

 if (strcmp(argv[0], "left") == 0) {
  config->title_align = ALIGN_LEFT;
 } else if (strcmp(argv[0], "center") == 0) {
  config->title_align = ALIGN_CENTER;
 } else if (strcmp(argv[0], "right") == 0) {
  config->title_align = ALIGN_RIGHT;
 } else {
  return cmd_results_new(CMD_INVALID,
    "Expected 'title_align left|center|right'");
 }

 for (int i = 0; i < root->outputs->length; ++i) {
  struct sway_output *output = root->outputs->items[i];
  output_damage_whole(output);
 }

 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
