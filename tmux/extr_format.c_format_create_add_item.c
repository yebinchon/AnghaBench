
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int ;
struct window_pane {int id; } ;
struct mouse_event {scalar_t__ valid; } ;
struct format_tree {int m; } ;
struct cmdq_item {TYPE_3__* shared; TYPE_2__* cmd; } ;
struct TYPE_6__ {struct mouse_event mouse; int * formats; } ;
struct TYPE_5__ {TYPE_1__* entry; } ;
struct TYPE_4__ {int name; } ;


 scalar_t__ cmd_mouse_at (struct window_pane*,struct mouse_event*,int *,int *,int ) ;
 struct window_pane* cmd_mouse_pane (struct mouse_event*,int *,int *) ;
 int format_add (struct format_tree*,char*,char*,int ) ;
 int format_add_cb (struct format_tree*,char*,int ) ;
 int format_cb_mouse_line ;
 int format_cb_mouse_word ;
 int format_merge (struct format_tree*,int *) ;
 int memcpy (int *,struct mouse_event*,int) ;

__attribute__((used)) static void
format_create_add_item(struct format_tree *ft, struct cmdq_item *item)
{
 struct mouse_event *m;
 struct window_pane *wp;
 u_int x, y;

 if (item->cmd != ((void*)0))
  format_add(ft, "command", "%s", item->cmd->entry->name);

 if (item->shared == ((void*)0))
  return;
 if (item->shared->formats != ((void*)0))
  format_merge(ft, item->shared->formats);

 m = &item->shared->mouse;
 if (m->valid && ((wp = cmd_mouse_pane(m, ((void*)0), ((void*)0))) != ((void*)0))) {
  format_add(ft, "mouse_pane", "%%%u", wp->id);
  if (cmd_mouse_at(wp, m, &x, &y, 0) == 0) {
   format_add(ft, "mouse_x", "%u", x);
   format_add(ft, "mouse_y", "%u", y);
   format_add_cb(ft, "mouse_word", format_cb_mouse_word);
   format_add_cb(ft, "mouse_line", format_cb_mouse_line);
  }
 }
 memcpy(&ft->m, m, sizeof ft->m);
}
