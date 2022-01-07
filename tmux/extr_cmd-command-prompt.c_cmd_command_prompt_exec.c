
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdq_item {int dummy; } ;
struct cmd_command_prompt_cdata {int idx; int flags; int * next_input; int * inputs; int * next_prompt; int * prompts; int * template; } ;
struct cmd {struct args* args; } ;
struct client {int * prompt_string; } ;
struct args {scalar_t__ argc; char const** argv; } ;
typedef enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;


 int CMD_RETURN_ERROR ;
 int CMD_RETURN_NORMAL ;
 int PROMPT_INCREMENTAL ;
 int PROMPT_NUMERIC ;
 int PROMPT_SINGLE ;
 char* args_get (struct args*,char) ;
 scalar_t__ args_has (struct args*,char) ;
 int cmd_command_prompt_callback ;
 int cmd_command_prompt_free ;
 struct client* cmd_find_client (struct cmdq_item*,char*,int ) ;
 int free (char*) ;
 int status_prompt_set (struct client*,char*,char*,int ,int ,struct cmd_command_prompt_cdata*,int ) ;
 size_t strcspn (int *,char*) ;
 char* strsep (int **,char*) ;
 int xasprintf (char**,char*,...) ;
 struct cmd_command_prompt_cdata* xcalloc (int,int) ;
 void* xstrdup (char const*) ;

__attribute__((used)) static enum cmd_retval
cmd_command_prompt_exec(struct cmd *self, struct cmdq_item *item)
{
 struct args *args = self->args;
 const char *inputs, *prompts;
 struct cmd_command_prompt_cdata *cdata;
 struct client *c;
 char *prompt, *ptr, *input = ((void*)0);
 size_t n;

 if ((c = cmd_find_client(item, args_get(args, 't'), 0)) == ((void*)0))
  return (CMD_RETURN_ERROR);

 if (c->prompt_string != ((void*)0))
  return (CMD_RETURN_NORMAL);

 cdata = xcalloc(1, sizeof *cdata);

 cdata->inputs = ((void*)0);
 cdata->next_input = ((void*)0);

 cdata->prompts = ((void*)0);
 cdata->next_prompt = ((void*)0);

 cdata->template = ((void*)0);
 cdata->idx = 1;

 if (args->argc != 0)
  cdata->template = xstrdup(args->argv[0]);
 else
  cdata->template = xstrdup("%1");

 if ((prompts = args_get(args, 'p')) != ((void*)0))
  cdata->prompts = xstrdup(prompts);
 else if (args->argc != 0) {
  n = strcspn(cdata->template, " ,");
  xasprintf(&cdata->prompts, "(%.*s) ", (int) n, cdata->template);
 } else
  cdata->prompts = xstrdup(":");


 cdata->next_prompt = cdata->prompts;
 ptr = strsep(&cdata->next_prompt, ",");
 if (prompts == ((void*)0))
  prompt = xstrdup(ptr);
 else
  xasprintf(&prompt, "%s ", ptr);


 if ((inputs = args_get(args, 'I')) != ((void*)0)) {
  cdata->inputs = xstrdup(inputs);
  cdata->next_input = cdata->inputs;
  input = strsep(&cdata->next_input, ",");
 }

 if (args_has(args, '1'))
  cdata->flags |= PROMPT_SINGLE;
 else if (args_has(args, 'N'))
  cdata->flags |= PROMPT_NUMERIC;
 else if (args_has(args, 'i'))
  cdata->flags |= PROMPT_INCREMENTAL;
 status_prompt_set(c, prompt, input, cmd_command_prompt_callback,
     cmd_command_prompt_free, cdata, cdata->flags);
 free(prompt);

 return (CMD_RETURN_NORMAL);
}
