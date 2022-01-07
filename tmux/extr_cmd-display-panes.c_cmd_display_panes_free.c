
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_display_panes_data {struct cmd_display_panes_data* command; int * item; } ;
struct client {struct cmd_display_panes_data* overlay_data; } ;


 int cmdq_continue (int *) ;
 int free (struct cmd_display_panes_data*) ;

__attribute__((used)) static void
cmd_display_panes_free(struct client *c)
{
 struct cmd_display_panes_data *cdata = c->overlay_data;

 if (cdata->item != ((void*)0))
  cmdq_continue(cdata->item);
 free(cdata->command);
 free(cdata);
}
