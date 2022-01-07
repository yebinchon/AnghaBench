
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdq_item {int (* cb ) (struct cmdq_item*,int ) ;int data; } ;
typedef enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;


 int stub1 (struct cmdq_item*,int ) ;

__attribute__((used)) static enum cmd_retval
cmdq_fire_callback(struct cmdq_item *item)
{
 return (item->cb(item, item->data));
}
