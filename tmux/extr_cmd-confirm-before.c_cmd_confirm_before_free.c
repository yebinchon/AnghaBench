
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_confirm_before_data {struct cmd_confirm_before_data* cmd; } ;


 int free (struct cmd_confirm_before_data*) ;

__attribute__((used)) static void
cmd_confirm_before_free(void *data)
{
 struct cmd_confirm_before_data *cdata = data;

 free(cdata->cmd);
 free(cdata);
}
