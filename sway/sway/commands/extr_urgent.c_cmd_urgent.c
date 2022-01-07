
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sway_view {int allow_request_urgent; } ;
struct sway_container {struct sway_view* view; } ;
struct cmd_results {int dummy; } ;
struct TYPE_3__ {struct sway_container* container; } ;
struct TYPE_4__ {TYPE_1__ handler_context; } ;


 int CMD_FAILURE ;
 int CMD_INVALID ;
 int CMD_SUCCESS ;
 int EXPECTED_EQUAL_TO ;
 struct cmd_results* checkarg (int,char*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,char*) ;
 TYPE_2__* config ;
 int parse_boolean (char*,int ) ;
 scalar_t__ strcmp (char*,char*) ;
 int view_is_urgent (struct sway_view*) ;
 int view_set_urgent (struct sway_view*,int ) ;

struct cmd_results *cmd_urgent(int argc, char **argv) {
 struct cmd_results *error = ((void*)0);
 if ((error = checkarg(argc, "urgent", EXPECTED_EQUAL_TO, 1))) {
  return error;
 }
 struct sway_container *container = config->handler_context.container;
 if (!container) {
  return cmd_results_new(CMD_FAILURE, "No current container");
 }
 if (!container->view) {
  return cmd_results_new(CMD_INVALID, "Only views can be urgent");
 }
 struct sway_view *view = container->view;

 if (strcmp(argv[0], "allow") == 0) {
  view->allow_request_urgent = 1;
 } else if (strcmp(argv[0], "deny") == 0) {
  view->allow_request_urgent = 0;
 } else {
  view_set_urgent(view, parse_boolean(argv[0], view_is_urgent(view)));
 }

 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
