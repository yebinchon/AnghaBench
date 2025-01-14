
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct sway_view {TYPE_2__* container; } ;
struct sway_seat {int dummy; } ;
struct sway_node {int dummy; } ;
struct sway_container {struct sway_node node; } ;
struct criteria {int raw; } ;
struct cmd_results {scalar_t__ status; } ;
struct cmd_handler {struct cmd_results* (* handle ) (int,char**) ;} ;
struct TYPE_14__ {scalar_t__ length; struct sway_view** items; } ;
typedef TYPE_3__ list_t ;
struct TYPE_15__ {int node; } ;
struct TYPE_13__ {struct sway_node node; } ;
struct TYPE_12__ {int using_criteria; struct sway_seat* seat; } ;
struct TYPE_11__ {TYPE_1__ handler_context; } ;


 scalar_t__ CMD_FAILURE ;
 scalar_t__ CMD_INVALID ;
 scalar_t__ CMD_SUCCESS ;
 int SWAY_INFO ;
 char* argsep (char**,char*,char*) ;
 struct cmd_results* cmd_results_new (scalar_t__,char*,...) ;
 struct cmd_results* cmd_set (int,char**) ;
 TYPE_10__* config ;
 TYPE_3__* create_list () ;
 int criteria_destroy (struct criteria*) ;
 TYPE_3__* criteria_get_views (struct criteria*) ;
 struct criteria* criteria_parse (char*,char**) ;
 char* do_var_replacement (char*) ;
 struct cmd_handler* find_core_handler (char*) ;
 int free (char*) ;
 int free_argv (int,char**) ;
 int free_cmd_results (struct cmd_results*) ;
 struct sway_seat* input_manager_get_default_seat () ;
 scalar_t__ isspace (char) ;
 int list_add (TYPE_3__*,struct cmd_results*) ;
 int list_free (TYPE_3__*) ;
 TYPE_4__* root ;
 struct sway_node* seat_get_focus_inactive (struct sway_seat*,int *) ;
 int set_config_node (struct sway_node*) ;
 char** split_args (char*,int*) ;
 scalar_t__ strcmp (char*,char*) ;
 char* strdup (char*) ;
 int strip_quotes (char*) ;
 int strlen (int ) ;
 struct cmd_results* stub1 (int,char**) ;
 struct cmd_results* stub2 (int,char**) ;
 int sway_assert (struct sway_seat*,char*) ;
 int sway_log (int ,char*,...) ;

list_t *execute_command(char *_exec, struct sway_seat *seat,
  struct sway_container *con) {
 char *cmd;
 char matched_delim = ';';
 list_t *views = ((void*)0);

 if (seat == ((void*)0)) {

  seat = input_manager_get_default_seat();
  if (!sway_assert(seat, "could not find a seat to run the command on")) {
   return ((void*)0);
  }
 }

 char *exec = strdup(_exec);
 char *head = exec;
 list_t *res_list = create_list();

 if (!res_list || !exec) {
  return ((void*)0);
 }

 config->handler_context.seat = seat;

 do {
  for (; isspace(*head); ++head) {}

  if (matched_delim == ';') {
   config->handler_context.using_criteria = 0;
   if (*head == '[') {
    char *error = ((void*)0);
    struct criteria *criteria = criteria_parse(head, &error);
    if (!criteria) {
     list_add(res_list,
       cmd_results_new(CMD_INVALID, "%s", error));
     free(error);
     goto cleanup;
    }
    list_free(views);
    views = criteria_get_views(criteria);
    head += strlen(criteria->raw);
    criteria_destroy(criteria);
    config->handler_context.using_criteria = 1;

    for (; isspace(*head); ++head) {}
   }
  }

  cmd = argsep(&head, ";,", &matched_delim);
  for (; isspace(*cmd); ++cmd) {}

  if (strcmp(cmd, "") == 0) {
   sway_log(SWAY_INFO, "Ignoring empty command.");
   continue;
  }
  sway_log(SWAY_INFO, "Handling command '%s'", cmd);

  int argc;
  char **argv = split_args(cmd, &argc);
  if (strcmp(argv[0], "exec") != 0 &&
    strcmp(argv[0], "exec_always") != 0 &&
    strcmp(argv[0], "mode") != 0) {
   for (int i = 1; i < argc; ++i) {
    if (*argv[i] == '\"' || *argv[i] == '\'') {
     strip_quotes(argv[i]);
    }
   }
  }
  struct cmd_handler *handler = find_core_handler(argv[0]);
  if (!handler) {
   list_add(res_list, cmd_results_new(CMD_INVALID,
     "Unknown/invalid command '%s'", argv[0]));
   free_argv(argc, argv);
   goto cleanup;
  }


  for (int i = handler->handle == cmd_set ? 2 : 1; i < argc; ++i) {
   argv[i] = do_var_replacement(argv[i]);
  }

  if (!config->handler_context.using_criteria) {

   struct sway_node *node = con ? &con->node :
     seat_get_focus_inactive(seat, &root->node);
   set_config_node(node);
   struct cmd_results *res = handler->handle(argc-1, argv+1);
   list_add(res_list, res);
   if (res->status == CMD_INVALID) {
    free_argv(argc, argv);
    goto cleanup;
   }
  } else if (views->length == 0) {
   list_add(res_list,
     cmd_results_new(CMD_FAILURE, "No matching node."));
  } else {
   struct cmd_results *fail_res = ((void*)0);
   for (int i = 0; i < views->length; ++i) {
    struct sway_view *view = views->items[i];
    set_config_node(&view->container->node);
    struct cmd_results *res = handler->handle(argc-1, argv+1);
    if (res->status == CMD_SUCCESS) {
     free_cmd_results(res);
    } else {

     if (fail_res) {
      free_cmd_results(fail_res);
     }
     fail_res = res;
     if (res->status == CMD_INVALID) {
      list_add(res_list, fail_res);
      free_argv(argc, argv);
      goto cleanup;
     }
    }
   }
   list_add(res_list,
     fail_res ? fail_res : cmd_results_new(CMD_SUCCESS, ((void*)0)));
  }
  free_argv(argc, argv);
 } while(head);
cleanup:
 free(exec);
 list_free(views);
 return res_list;
}
