
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list {int references; int list; scalar_t__ group; } ;


 int TAILQ_INIT (int *) ;
 int cmd_list_next_group ;
 struct cmd_list* xcalloc (int,int) ;

struct cmd_list *
cmd_list_new(void)
{
 struct cmd_list *cmdlist;

 cmdlist = xcalloc(1, sizeof *cmdlist);
 cmdlist->references = 1;
 cmdlist->group = cmd_list_next_group++;
 TAILQ_INIT(&cmdlist->list);
 return (cmdlist);
}
