
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdq_list {int dummy; } ;
struct client {struct cmdq_list queue; } ;


 struct cmdq_list global_queue ;

__attribute__((used)) static struct cmdq_list *
cmdq_get(struct client *c)
{
 if (c == ((void*)0))
  return (&global_queue);
 return (&c->queue);
}
