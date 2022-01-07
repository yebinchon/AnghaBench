
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_results {int dummy; } ;
struct cmd_handler {struct cmd_results* (* handle ) (int,char**) ;} ;


 int CMD_INVALID ;
 int SWAY_DEBUG ;
 struct cmd_results* cmd_results_new (int ,char*,char*) ;
 struct cmd_handler* find_handler (char*,struct cmd_handler*,size_t) ;
 int free (char*) ;
 char* join_args (char**,int) ;
 struct cmd_results* stub1 (int,char**) ;
 int sway_log (int ,char*,char*) ;

struct cmd_results *config_subcommand(char **argv, int argc,
  struct cmd_handler *handlers, size_t handlers_size) {
 char *command = join_args(argv, argc);
 sway_log(SWAY_DEBUG, "Subcommand: %s", command);
 free(command);

 struct cmd_handler *handler = find_handler(argv[0], handlers,
   handlers_size);
 if (!handler) {
  return cmd_results_new(CMD_INVALID,
    "Unknown/invalid command '%s'", argv[0]);
 }
 if (handler->handle) {
  return handler->handle(argc - 1, argv + 1);
 }
 return cmd_results_new(CMD_INVALID,
   "The command '%s' is shimmed, but unimplemented", argv[0]);
}
