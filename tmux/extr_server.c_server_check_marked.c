
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cmd_find_valid_state (int *) ;
 int marked_pane ;

int
server_check_marked(void)
{
 return (cmd_find_valid_state(&marked_pane));
}
