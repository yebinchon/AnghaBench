
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct notify_entry {char const* name; int pane; int window; int session; int client; int fs; } ;
struct TYPE_4__ {TYPE_1__* wp; int w; int s; } ;
struct cmdq_item {TYPE_2__ target; int client; } ;
struct TYPE_3__ {int id; } ;


 int cmd_find_copy_state (int *,TYPE_2__*) ;
 int memset (struct notify_entry*,int ,int) ;
 int notify_insert_hook (struct cmdq_item*,struct notify_entry*) ;

void
notify_hook(struct cmdq_item *item, const char *name)
{
 struct notify_entry ne;

 memset(&ne, 0, sizeof ne);

 ne.name = name;
 cmd_find_copy_state(&ne.fs, &item->target);

 ne.client = item->client;
 ne.session = item->target.s;
 ne.window = item->target.w;
 ne.pane = item->target.wp->id;

 notify_insert_hook(item, &ne);
}
