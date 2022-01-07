
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdq_item {int dummy; } ;
struct cmd_parse_result {int status; char* error; int cmdlist; } ;
struct cmd_command_prompt_cdata {int flags; char* template; int idx; int next_input; int next_prompt; } ;
struct client {scalar_t__ prompt_inputcb; } ;





 int PROMPT_INCREMENTAL ;
 int cmd_list_free (int ) ;
 struct cmd_parse_result* cmd_parse_from_string (char*,int *) ;
 char* cmd_template_replace (char*,char const*,int ) ;
 int cmdq_append (struct client*,struct cmdq_item*) ;
 struct cmdq_item* cmdq_get_command (int ,int *,int *,int ) ;
 struct cmdq_item* cmdq_get_error (char*) ;
 int free (char*) ;
 int status_prompt_update (struct client*,char*,char*) ;
 char* strsep (int *,char*) ;
 int xasprintf (char**,char*,char*) ;

__attribute__((used)) static int
cmd_command_prompt_callback(struct client *c, void *data, const char *s,
    int done)
{
 struct cmd_command_prompt_cdata *cdata = data;
 struct cmdq_item *new_item;
 char *new_template, *prompt, *ptr;
 char *input = ((void*)0);
 struct cmd_parse_result *pr;

 if (s == ((void*)0))
  return (0);
 if (done && (cdata->flags & PROMPT_INCREMENTAL))
  return (0);

 new_template = cmd_template_replace(cdata->template, s, cdata->idx);
 if (done) {
  free(cdata->template);
  cdata->template = new_template;
 }





 if (done && (ptr = strsep(&cdata->next_prompt, ",")) != ((void*)0)) {
  xasprintf(&prompt, "%s ", ptr);
  input = strsep(&cdata->next_input, ",");
  status_prompt_update(c, prompt, input);

  free(prompt);
  cdata->idx++;
  return (1);
 }

 pr = cmd_parse_from_string(new_template, ((void*)0));
 switch (pr->status) {
 case 130:
  new_item = ((void*)0);
  break;
 case 129:
  new_item = cmdq_get_error(pr->error);
  free(pr->error);
  cmdq_append(c, new_item);
  break;
 case 128:
  new_item = cmdq_get_command(pr->cmdlist, ((void*)0), ((void*)0), 0);
  cmd_list_free(pr->cmdlist);
  cmdq_append(c, new_item);
  break;
 }

 if (!done)
  free(new_template);
 if (c->prompt_inputcb != cmd_command_prompt_callback)
  return (1);
 return (0);
}
