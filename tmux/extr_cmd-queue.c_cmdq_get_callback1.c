
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdq_item {void* data; int cb; scalar_t__ flags; scalar_t__ group; int type; int name; } ;
typedef int cmdq_cb ;


 int CMDQ_CALLBACK ;
 int xasprintf (int *,char*,char const*,struct cmdq_item*) ;
 struct cmdq_item* xcalloc (int,int) ;

struct cmdq_item *
cmdq_get_callback1(const char *name, cmdq_cb cb, void *data)
{
 struct cmdq_item *item;

 item = xcalloc(1, sizeof *item);
 xasprintf(&item->name, "[%s/%p]", name, item);
 item->type = CMDQ_CALLBACK;

 item->group = 0;
 item->flags = 0;

 item->cb = cb;
 item->data = data;

 return (item);
}
