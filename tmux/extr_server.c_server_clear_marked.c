
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cmd_find_clear_state (int *,int ) ;
 int marked_pane ;

void
server_clear_marked(void)
{
 cmd_find_clear_state(&marked_pane, 0);
}
