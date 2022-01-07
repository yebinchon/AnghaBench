
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdq_item {int dummy; } ;
struct cmd_parse_result {int status; char* error; int cmdlist; } ;
struct cmd {struct args* args; } ;
struct args {char** argv; int argc; } ;
typedef scalar_t__ key_code ;
typedef enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;





 int CMD_RETURN_ERROR ;
 int CMD_RETURN_NORMAL ;
 scalar_t__ KEYC_NONE ;
 scalar_t__ KEYC_UNKNOWN ;
 char* args_get (struct args*,char) ;
 scalar_t__ args_has (struct args*,char) ;
 struct cmd_parse_result* cmd_parse_from_arguments (int,char**,int *) ;
 struct cmd_parse_result* cmd_parse_from_string (char*,int *) ;
 int cmdq_error (struct cmdq_item*,char*,...) ;
 int free (char*) ;
 int key_bindings_add (char const*,scalar_t__,scalar_t__,int ) ;
 scalar_t__ key_string_lookup_string (char*) ;

__attribute__((used)) static enum cmd_retval
cmd_bind_key_exec(struct cmd *self, struct cmdq_item *item)
{
 struct args *args = self->args;
 key_code key;
 const char *tablename;
 struct cmd_parse_result *pr;
 char **argv = args->argv;
 int argc = args->argc;

 key = key_string_lookup_string(argv[0]);
 if (key == KEYC_NONE || key == KEYC_UNKNOWN) {
  cmdq_error(item, "unknown key: %s", argv[0]);
  return (CMD_RETURN_ERROR);
 }

 if (args_has(args, 'T'))
  tablename = args_get(args, 'T');
 else if (args_has(args, 'n'))
  tablename = "root";
 else
  tablename = "prefix";

 if (argc == 2)
  pr = cmd_parse_from_string(argv[1], ((void*)0));
 else
  pr = cmd_parse_from_arguments(argc - 1, argv + 1, ((void*)0));
 switch (pr->status) {
 case 130:
  cmdq_error(item, "empty command");
  return (CMD_RETURN_ERROR);
 case 129:
  cmdq_error(item, "%s", pr->error);
  free(pr->error);
  return (CMD_RETURN_ERROR);
 case 128:
  break;
 }
 key_bindings_add(tablename, key, args_has(args, 'r'), pr->cmdlist);
 return (CMD_RETURN_NORMAL);
}
