
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sway_workspace {char* name; int output; } ;
struct cmd_results {int dummy; } ;
struct TYPE_6__ {struct sway_workspace* workspace; } ;
struct TYPE_8__ {TYPE_2__ handler_context; } ;
struct TYPE_7__ {TYPE_1__* outputs; } ;
struct TYPE_5__ {int length; } ;


 int CMD_INVALID ;
 int CMD_SUCCESS ;
 int EXPECTED_AT_LEAST ;
 int SWAY_DEBUG ;
 struct cmd_results* checkarg (int,char*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,char*,...) ;
 TYPE_4__* config ;
 char* expected_syntax ;
 int free (char*) ;
 int ipc_event_workspace (int *,struct sway_workspace*,char*) ;
 int isdigit (char) ;
 char* join_args (char**,int) ;
 int output_sort_workspaces (int ) ;
 TYPE_3__* root ;
 int root_rename_pid_workspaces (char*,char*) ;
 scalar_t__ strcasecmp (char*,char*) ;
 int sway_log (int ,char*,char*,char*) ;
 struct sway_workspace* workspace_by_name (char*) ;
 struct sway_workspace* workspace_by_number (char*) ;

struct cmd_results *cmd_rename(int argc, char **argv) {
 struct cmd_results *error = ((void*)0);
 if ((error = checkarg(argc, "rename", EXPECTED_AT_LEAST, 3))) {
  return error;
 }
 if (!root->outputs->length) {
  return cmd_results_new(CMD_INVALID,
    "Can't run this command while there's no outputs connected.");
 }
 if (strcasecmp(argv[0], "workspace") != 0) {
  return cmd_results_new(CMD_INVALID, expected_syntax);
 }

 int argn = 1;
 struct sway_workspace *workspace = ((void*)0);

 if (strcasecmp(argv[1], "to") == 0) {

  workspace = config->handler_context.workspace;
 } else if (strcasecmp(argv[1], "number") == 0) {

  if (!isdigit(argv[2][0])) {
   return cmd_results_new(CMD_INVALID,
     "Invalid workspace number '%s'", argv[2]);
  }
  workspace = workspace_by_number(argv[2]);
  while (argn < argc && strcasecmp(argv[argn], "to") != 0) {
   ++argn;
  }
 } else {

  int end = argn;
  while (end < argc && strcasecmp(argv[end], "to") != 0) {
   ++end;
  }
  char *old_name = join_args(argv + argn, end - argn);
  workspace = workspace_by_name(old_name);
  free(old_name);
  argn = end;
 }

 if (!workspace) {
  return cmd_results_new(CMD_INVALID,
    "There is no workspace with that name");
 }

 ++argn;

 if (argn >= argc) {
  return cmd_results_new(CMD_INVALID, expected_syntax);
 }

 char *new_name = join_args(argv + argn, argc - argn);
 if (strcasecmp(new_name, "next") == 0 ||
   strcasecmp(new_name, "prev") == 0 ||
   strcasecmp(new_name, "next_on_output") == 0 ||
   strcasecmp(new_name, "prev_on_output") == 0 ||
   strcasecmp(new_name, "back_and_forth") == 0 ||
   strcasecmp(new_name, "current") == 0 ||
   strcasecmp(new_name, "number") == 0) {
  free(new_name);
  return cmd_results_new(CMD_INVALID,
    "Cannot use special workspace name '%s'", argv[argn]);
 }
 struct sway_workspace *tmp_workspace = workspace_by_name(new_name);
 if (tmp_workspace) {
  free(new_name);
  if (tmp_workspace == workspace) {
   return cmd_results_new(CMD_SUCCESS, ((void*)0));
  } else {
   return cmd_results_new(CMD_INVALID, "Workspace already exists");
  }
 }

 sway_log(SWAY_DEBUG, "renaming workspace '%s' to '%s'", workspace->name, new_name);

 root_rename_pid_workspaces(workspace->name, new_name);

 free(workspace->name);
 workspace->name = new_name;

 output_sort_workspaces(workspace->output);
 ipc_event_workspace(((void*)0), workspace, "rename");

 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
