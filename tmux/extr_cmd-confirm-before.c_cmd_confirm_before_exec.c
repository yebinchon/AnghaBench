
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdq_item {int dummy; } ;
struct cmd_confirm_before_data {void* cmd; } ;
struct cmd {struct args* args; } ;
struct client {int dummy; } ;
struct args {int * argv; } ;
typedef enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;


 int CMD_RETURN_ERROR ;
 int CMD_RETURN_NORMAL ;
 int PROMPT_SINGLE ;
 char* args_get (struct args*,char) ;
 int cmd_confirm_before_callback ;
 int cmd_confirm_before_free ;
 struct client* cmd_find_client (struct cmdq_item*,char*,int ) ;
 int free (char*) ;
 int status_prompt_set (struct client*,char*,int *,int ,int ,struct cmd_confirm_before_data*,int ) ;
 char* strsep (char**,char*) ;
 int xasprintf (char**,char*,char const*) ;
 struct cmd_confirm_before_data* xmalloc (int) ;
 void* xstrdup (int ) ;

__attribute__((used)) static enum cmd_retval
cmd_confirm_before_exec(struct cmd *self, struct cmdq_item *item)
{
 struct args *args = self->args;
 struct cmd_confirm_before_data *cdata;
 struct client *c;
 char *cmd, *copy, *new_prompt, *ptr;
 const char *prompt;

 if ((c = cmd_find_client(item, args_get(args, 't'), 0)) == ((void*)0))
  return (CMD_RETURN_ERROR);

 if ((prompt = args_get(args, 'p')) != ((void*)0))
  xasprintf(&new_prompt, "%s ", prompt);
 else {
  ptr = copy = xstrdup(args->argv[0]);
  cmd = strsep(&ptr, " \t");
  xasprintf(&new_prompt, "Confirm '%s'? (y/n) ", cmd);
  free(copy);
 }

 cdata = xmalloc(sizeof *cdata);
 cdata->cmd = xstrdup(args->argv[0]);

 status_prompt_set(c, new_prompt, ((void*)0),
     cmd_confirm_before_callback, cmd_confirm_before_free, cdata,
     PROMPT_SINGLE);

 free(new_prompt);
 return (CMD_RETURN_NORMAL);
}
