
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sway_workspace {int layout; TYPE_2__* tiling; } ;
struct sway_node {scalar_t__ type; } ;
struct sway_container {scalar_t__ fullscreen_mode; struct sway_container* parent; int workspace; } ;
struct cmd_results {int dummy; } ;
typedef enum sway_fullscreen_mode { ____Placeholder_sway_fullscreen_mode } sway_fullscreen_mode ;
struct TYPE_8__ {int seat; struct sway_workspace* workspace; struct sway_container* container; struct sway_node* node; } ;
struct TYPE_10__ {TYPE_3__ handler_context; } ;
struct TYPE_9__ {TYPE_1__* outputs; } ;
struct TYPE_7__ {scalar_t__ length; } ;
struct TYPE_6__ {int length; } ;


 int CMD_FAILURE ;
 int CMD_SUCCESS ;
 int EXPECTED_AT_MOST ;
 int FULLSCREEN_GLOBAL ;
 scalar_t__ FULLSCREEN_NONE ;
 int FULLSCREEN_WORKSPACE ;
 int L_HORIZ ;
 scalar_t__ N_WORKSPACE ;
 int arrange_root () ;
 struct cmd_results* checkarg (int,char*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,char*) ;
 TYPE_5__* config ;
 int container_set_fullscreen (struct sway_container*,int) ;
 int parse_boolean (char*,int) ;
 TYPE_4__* root ;
 int seat_set_focus_container (int ,struct sway_container*) ;
 scalar_t__ strcasecmp (char*,char*) ;
 struct sway_container* workspace_wrap_children (struct sway_workspace*) ;

struct cmd_results *cmd_fullscreen(int argc, char **argv) {
 struct cmd_results *error = ((void*)0);
 if ((error = checkarg(argc, "fullscreen", EXPECTED_AT_MOST, 2))) {
  return error;
 }
 if (!root->outputs->length) {
  return cmd_results_new(CMD_FAILURE,
    "Can't run this command while there's no outputs connected.");
 }
 struct sway_node *node = config->handler_context.node;
 struct sway_container *container = config->handler_context.container;
 struct sway_workspace *workspace = config->handler_context.workspace;
 if (node->type == N_WORKSPACE && workspace->tiling->length == 0) {
  return cmd_results_new(CMD_FAILURE,
    "Can't fullscreen an empty workspace");
 }


 if (container && !container->workspace) {
  while (container->parent) {
   container = container->parent;
  }
 }

 bool is_fullscreen = 0;
 for (struct sway_container *curr = container; curr; curr = curr->parent) {
  if (curr->fullscreen_mode != FULLSCREEN_NONE) {
   container = curr;
   is_fullscreen = 1;
   break;
  }
 }

 bool global = 0;
 bool enable = !is_fullscreen;

 if (argc >= 1) {
  if (strcasecmp(argv[0], "global") == 0) {
   global = 1;
  } else {
   enable = parse_boolean(argv[0], is_fullscreen);
  }
 }

 if (argc >= 2) {
  global = strcasecmp(argv[1], "global") == 0;
 }

 if (enable && node->type == N_WORKSPACE) {

  container = workspace_wrap_children(workspace);
  workspace->layout = L_HORIZ;
  seat_set_focus_container(config->handler_context.seat, container);
 }

 enum sway_fullscreen_mode mode = FULLSCREEN_NONE;
 if (enable) {
  mode = global ? FULLSCREEN_GLOBAL : FULLSCREEN_WORKSPACE;
 }

 container_set_fullscreen(container, mode);
 arrange_root();

 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
