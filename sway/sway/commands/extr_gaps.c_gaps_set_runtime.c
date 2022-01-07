
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int top; int right; int bottom; int left; } ;
struct gaps_data {int inner; int amount; int operation; TYPE_2__ outer; int member_0; } ;
struct cmd_results {int dummy; } ;
struct TYPE_8__ {int workspace; } ;
struct TYPE_10__ {TYPE_3__ handler_context; } ;
struct TYPE_9__ {TYPE_1__* outputs; } ;
struct TYPE_6__ {int length; } ;


 int CMD_INVALID ;
 int CMD_SUCCESS ;
 int EXPECTED_EQUAL_TO ;
 int GAPS_OP_ADD ;
 int GAPS_OP_SET ;
 int GAPS_OP_SUBTRACT ;
 struct cmd_results* checkarg (int,char*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,char*,...) ;
 TYPE_5__* config ;
 int configure_gaps (int ,struct gaps_data*) ;
 int expected_runtime ;
 TYPE_4__* root ;
 int root_for_each_workspace (int (*) (int ,struct gaps_data*),struct gaps_data*) ;
 scalar_t__ strcasecmp (char*,char*) ;
 scalar_t__ strlen (char*) ;
 int strtol (char*,char**,int) ;

__attribute__((used)) static struct cmd_results *gaps_set_runtime(int argc, char **argv) {
 struct cmd_results *error = checkarg(argc, "gaps", EXPECTED_EQUAL_TO, 4);
 if (error) {
  return error;
 }
 if (!root->outputs->length) {
  return cmd_results_new(CMD_INVALID,
    "Can't run this command while there's no outputs connected.");
 }

 struct gaps_data data = {0};

 if (strcasecmp(argv[0], "inner") == 0) {
  data.inner = 1;
 } else {
  data.outer.top = !strcasecmp(argv[0], "outer") ||
   !strcasecmp(argv[0], "vertical") || !strcasecmp(argv[0], "top");
  data.outer.right = !strcasecmp(argv[0], "outer") ||
   !strcasecmp(argv[0], "horizontal") || !strcasecmp(argv[0], "right");
  data.outer.bottom = !strcasecmp(argv[0], "outer") ||
   !strcasecmp(argv[0], "vertical") || !strcasecmp(argv[0], "bottom");
  data.outer.left = !strcasecmp(argv[0], "outer") ||
   !strcasecmp(argv[0], "horizontal") || !strcasecmp(argv[0], "left");
 }
 if (!data.inner && !data.outer.top && !data.outer.right &&
   !data.outer.bottom && !data.outer.left) {
  return cmd_results_new(CMD_INVALID, "Expected %s", expected_runtime);
 }

 bool all;
 if (strcasecmp(argv[1], "current") == 0) {
  all = 0;
 } else if (strcasecmp(argv[1], "all") == 0) {
  all = 1;
 } else {
  return cmd_results_new(CMD_INVALID, "Expected %s", expected_runtime);
 }

 if (strcasecmp(argv[2], "set") == 0) {
  data.operation = GAPS_OP_SET;
 } else if (strcasecmp(argv[2], "plus") == 0) {
  data.operation = GAPS_OP_ADD;
 } else if (strcasecmp(argv[2], "minus") == 0) {
  data.operation = GAPS_OP_SUBTRACT;
 } else {
  return cmd_results_new(CMD_INVALID, "Expected %s", expected_runtime);
 }

 char *end;
 data.amount = strtol(argv[3], &end, 10);
 if (strlen(end) && strcasecmp(end, "px") != 0) {
  return cmd_results_new(CMD_INVALID, "Expected %s", expected_runtime);
 }

 if (all) {
  root_for_each_workspace(configure_gaps, &data);
 } else {
  configure_gaps(config->handler_context.workspace, &data);
 }

 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
