
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list {int list; int group; } ;
struct cmd {int group; } ;


 int TAILQ_INSERT_TAIL (int *,struct cmd*,int ) ;
 int qentry ;

void
cmd_list_append(struct cmd_list *cmdlist, struct cmd *cmd)
{
 cmd->group = cmdlist->group;
 TAILQ_INSERT_TAIL(&cmdlist->list, cmd, qentry);
}
