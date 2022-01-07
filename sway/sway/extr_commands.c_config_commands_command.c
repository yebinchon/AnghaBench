
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct command_policy {char* command; int context; } ;
struct cmd_results {int dummy; } ;
struct cmd_handler {int dummy; } ;
typedef enum command_context { ____Placeholder_command_context } command_context ;
typedef int context_names ;
struct TYPE_4__ {TYPE_1__* command_policies; } ;
struct TYPE_3__ {int length; struct command_policy** items; } ;


 int CMD_BLOCK_END ;
 int CMD_INVALID ;
 int CMD_SUCCESS ;
 int CONTEXT_ALL ;
 int CONTEXT_BINDING ;
 int CONTEXT_CONFIG ;
 int CONTEXT_CRITERIA ;
 int CONTEXT_IPC ;
 int SWAY_INFO ;
 struct command_policy* alloc_command_policy (char*) ;
 struct cmd_results* cmd_results_new (int ,char*,...) ;
 TYPE_2__* config ;
 struct cmd_handler* find_handler (char*,int *,int ) ;
 int free_argv (int,char**) ;
 int list_add (TYPE_1__*,struct command_policy*) ;
 char** split_args (char*,int*) ;
 scalar_t__ strcmp (char*,char*) ;
 int sway_assert (struct command_policy*,char*) ;
 int sway_log (int ,char*,char*,int) ;

struct cmd_results *config_commands_command(char *exec) {
 struct cmd_results *results = ((void*)0);
 int argc;
 char **argv = split_args(exec, &argc);
 if (!argc) {
  results = cmd_results_new(CMD_SUCCESS, ((void*)0));
  goto cleanup;
 }


 char *cmd = argv[0];

 if (strcmp(cmd, "}") == 0) {
  results = cmd_results_new(CMD_BLOCK_END, ((void*)0));
  goto cleanup;
 }

 struct cmd_handler *handler = find_handler(cmd, ((void*)0), 0);
 if (!handler && strcmp(cmd, "*") != 0) {
  results = cmd_results_new(CMD_INVALID,
   "Unknown/invalid command '%s'", cmd);
  goto cleanup;
 }

 enum command_context context = 0;

 struct {
  char *name;
  enum command_context context;
 } context_names[] = {
  { "config", CONTEXT_CONFIG },
  { "binding", CONTEXT_BINDING },
  { "ipc", CONTEXT_IPC },
  { "criteria", CONTEXT_CRITERIA },
  { "all", CONTEXT_ALL },
 };

 for (int i = 1; i < argc; ++i) {
  size_t j;
  for (j = 0; j < sizeof(context_names) / sizeof(context_names[0]); ++j) {
   if (strcmp(context_names[j].name, argv[i]) == 0) {
    break;
   }
  }
  if (j == sizeof(context_names) / sizeof(context_names[0])) {
   results = cmd_results_new(CMD_INVALID,
     "Invalid command context %s", argv[i]);
   goto cleanup;
  }
  context |= context_names[j].context;
 }

 struct command_policy *policy = ((void*)0);
 for (int i = 0; i < config->command_policies->length; ++i) {
  struct command_policy *p = config->command_policies->items[i];
  if (strcmp(p->command, cmd) == 0) {
   policy = p;
   break;
  }
 }
 if (!policy) {
  policy = alloc_command_policy(cmd);
  if (!sway_assert(policy, "Unable to allocate security policy")) {
   results = cmd_results_new(CMD_INVALID,
     "Unable to allocate memory");
   goto cleanup;
  }
  list_add(config->command_policies, policy);
 }
 policy->context = context;

 sway_log(SWAY_INFO, "Set command policy for %s to %d",
   policy->command, policy->context);

 results = cmd_results_new(CMD_SUCCESS, ((void*)0));

cleanup:
 free_argv(argc, argv);
 return results;
}
