
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef char xcb_window_t ;
struct sway_node {int dummy; } ;
struct sway_container {int node; } ;
struct cmd_results {int dummy; } ;
struct TYPE_6__ {struct sway_container* container; } ;
struct TYPE_8__ {TYPE_2__ handler_context; } ;
struct TYPE_7__ {scalar_t__ fullscreen_global; TYPE_1__* outputs; } ;
struct TYPE_5__ {int length; } ;


 int CMD_FAILURE ;
 int CMD_INVALID ;
 int CMD_SUCCESS ;
 int EXPECTED_AT_LEAST ;
 int arrange_node (struct sway_node*) ;
 int arrange_root () ;
 size_t atoi (char*) ;
 struct cmd_results* checkarg (int,char*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,char*,...) ;
 TYPE_4__* config ;
 scalar_t__ container_has_ancestor (struct sway_container*,struct sway_container*) ;
 int container_swap (struct sway_container*,struct sway_container*) ;
 char* expected_syntax ;
 int free (char*) ;
 char* join_args (char**,int) ;
 struct sway_node* node_get_parent (int *) ;
 TYPE_3__* root ;
 struct sway_container* root_find_container (int ,...) ;
 scalar_t__ strcasecmp (char*,char*) ;
 char strtol (char*,int *,int ) ;
 int test_con_id ;
 int test_id ;
 int test_mark ;

struct cmd_results *cmd_swap(int argc, char **argv) {
 struct cmd_results *error = ((void*)0);
 if ((error = checkarg(argc, "swap", EXPECTED_AT_LEAST, 4))) {
  return error;
 }
 if (!root->outputs->length) {
  return cmd_results_new(CMD_INVALID,
    "Can't run this command while there's no outputs connected.");
 }

 if (strcasecmp(argv[0], "container") || strcasecmp(argv[1], "with")) {
  return cmd_results_new(CMD_INVALID, expected_syntax);
 }

 struct sway_container *current = config->handler_context.container;
 struct sway_container *other = ((void*)0);

 char *value = join_args(argv + 3, argc - 3);
 if (strcasecmp(argv[2], "id") == 0) {




 } else if (strcasecmp(argv[2], "con_id") == 0) {
  size_t con_id = atoi(value);
  other = root_find_container(test_con_id, &con_id);
 } else if (strcasecmp(argv[2], "mark") == 0) {
  other = root_find_container(test_mark, value);
 } else {
  free(value);
  return cmd_results_new(CMD_INVALID, expected_syntax);
 }

 if (!other) {
  error = cmd_results_new(CMD_FAILURE,
    "Failed to find %s '%s'", argv[2], value);
 } else if (!current) {
  error = cmd_results_new(CMD_FAILURE,
    "Can only swap with containers and views");
 } else if (container_has_ancestor(current, other)
   || container_has_ancestor(other, current)) {
  error = cmd_results_new(CMD_FAILURE,
    "Cannot swap ancestor and descendant");
 }

 free(value);

 if (error) {
  return error;
 }

 container_swap(current, other);

 if (root->fullscreen_global) {
  arrange_root();
 } else {
  struct sway_node *current_parent = node_get_parent(&current->node);
  struct sway_node *other_parent = node_get_parent(&other->node);
  if (current_parent) {
   arrange_node(current_parent);
  }
  if (other_parent && current_parent != other_parent) {
   arrange_node(other_parent);
  }
 }

 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
