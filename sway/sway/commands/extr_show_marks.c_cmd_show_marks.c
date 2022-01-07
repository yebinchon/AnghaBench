
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sway_output {int dummy; } ;
struct cmd_results {int dummy; } ;
struct TYPE_6__ {scalar_t__ show_marks; } ;
struct TYPE_5__ {TYPE_1__* outputs; } ;
struct TYPE_4__ {int length; struct sway_output** items; } ;


 int CMD_SUCCESS ;
 int EXPECTED_AT_LEAST ;
 struct cmd_results* checkarg (int,char*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,int *) ;
 TYPE_3__* config ;
 int output_damage_whole (struct sway_output*) ;
 scalar_t__ parse_boolean (char*,scalar_t__) ;
 int rebuild_marks_iterator ;
 TYPE_2__* root ;
 int root_for_each_container (int ,int *) ;

struct cmd_results *cmd_show_marks(int argc, char **argv) {
 struct cmd_results *error = ((void*)0);
 if ((error = checkarg(argc, "show_marks", EXPECTED_AT_LEAST, 1))) {
  return error;
 }

 config->show_marks = parse_boolean(argv[0], config->show_marks);

 if (config->show_marks) {
  root_for_each_container(rebuild_marks_iterator, ((void*)0));
 }

 for (int i = 0; i < root->outputs->length; ++i) {
  struct sway_output *output = root->outputs->items[i];
  output_damage_whole(output);
 }

 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
