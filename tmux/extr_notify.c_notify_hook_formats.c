
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window {int id; int name; } ;
struct session {int id; int name; } ;
struct cmdq_item {int dummy; } ;


 int cmdq_format (struct cmdq_item*,char*,char*,int) ;

__attribute__((used)) static void
notify_hook_formats(struct cmdq_item *item, struct session *s, struct window *w,
    int pane)
{
 if (s != ((void*)0)) {
  cmdq_format(item, "hook_session", "$%u", s->id);
  cmdq_format(item, "hook_session_name", "%s", s->name);
 }
 if (w != ((void*)0)) {
  cmdq_format(item, "hook_window", "@%u", w->id);
  cmdq_format(item, "hook_window_name", "%s", w->name);
 }
 if (pane != -1)
  cmdq_format(item, "hook_pane", "%%%d", pane);
}
