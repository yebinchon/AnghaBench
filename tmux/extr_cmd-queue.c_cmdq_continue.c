
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdq_item {int flags; } ;


 int CMDQ_WAITING ;

void
cmdq_continue(struct cmdq_item *item)
{
 item->flags &= ~CMDQ_WAITING;
}
