
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_command_prompt_cdata {struct cmd_command_prompt_cdata* template; struct cmd_command_prompt_cdata* prompts; struct cmd_command_prompt_cdata* inputs; } ;


 int free (struct cmd_command_prompt_cdata*) ;

__attribute__((used)) static void
cmd_command_prompt_free(void *data)
{
 struct cmd_command_prompt_cdata *cdata = data;

 free(cdata->inputs);
 free(cdata->prompts);
 free(cdata->template);
 free(cdata);
}
