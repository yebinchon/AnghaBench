
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_run_shell_data {struct cmd_run_shell_data* cmd; } ;


 int free (struct cmd_run_shell_data*) ;

__attribute__((used)) static void
cmd_run_shell_free(void *data)
{
 struct cmd_run_shell_data *cdata = data;

 free(cdata->cmd);
 free(cdata);
}
