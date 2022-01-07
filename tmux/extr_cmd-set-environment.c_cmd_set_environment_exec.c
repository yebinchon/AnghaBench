
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct environ {int dummy; } ;
struct TYPE_4__ {TYPE_1__* s; } ;
struct cmdq_item {TYPE_2__ target; } ;
struct cmd {struct args* args; } ;
struct args {char** argv; int argc; } ;
typedef enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;
struct TYPE_3__ {struct environ* environ; } ;


 int CMD_RETURN_ERROR ;
 int CMD_RETURN_NORMAL ;
 char* args_get (struct args*,char) ;
 scalar_t__ args_has (struct args*,char) ;
 int cmdq_error (struct cmdq_item*,char*,...) ;
 int environ_clear (struct environ*,char const*) ;
 int environ_set (struct environ*,char const*,char*,char const*) ;
 int environ_unset (struct environ*,char const*) ;
 struct environ* global_environ ;
 int * strchr (char const*,char) ;

__attribute__((used)) static enum cmd_retval
cmd_set_environment_exec(struct cmd *self, struct cmdq_item *item)
{
 struct args *args = self->args;
 struct environ *env;
 const char *name, *value, *target;

 name = args->argv[0];
 if (*name == '\0') {
  cmdq_error(item, "empty variable name");
  return (CMD_RETURN_ERROR);
 }
 if (strchr(name, '=') != ((void*)0)) {
  cmdq_error(item, "variable name contains =");
  return (CMD_RETURN_ERROR);
 }

 if (args->argc < 2)
  value = ((void*)0);
 else
  value = args->argv[1];

 if (args_has(self->args, 'g'))
  env = global_environ;
 else {
  if (item->target.s == ((void*)0)) {
   target = args_get(args, 't');
   if (target != ((void*)0))
    cmdq_error(item, "no such session: %s", target);
   else
    cmdq_error(item, "no current session");
   return (CMD_RETURN_ERROR);
  }
  env = item->target.s->environ;
 }

 if (args_has(self->args, 'u')) {
  if (value != ((void*)0)) {
   cmdq_error(item, "can't specify a value with -u");
   return (CMD_RETURN_ERROR);
  }
  environ_unset(env, name);
 } else if (args_has(self->args, 'r')) {
  if (value != ((void*)0)) {
   cmdq_error(item, "can't specify a value with -r");
   return (CMD_RETURN_ERROR);
  }
  environ_clear(env, name);
 } else {
  if (value == ((void*)0)) {
   cmdq_error(item, "no value specified");
   return (CMD_RETURN_ERROR);
  }
  environ_set(env, name, "%s", value);
 }

 return (CMD_RETURN_NORMAL);
}
