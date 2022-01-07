
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd {int args; struct cmd* file; int argv; int argc; struct cmd* alias; } ;


 int args_free (int ) ;
 int cmd_free_argv (int ,int ) ;
 int free (struct cmd*) ;

void
cmd_free(struct cmd *cmd)
{
 free(cmd->alias);
 cmd_free_argv(cmd->argc, cmd->argv);

 free(cmd->file);

 args_free(cmd->args);
 free(cmd);
}
