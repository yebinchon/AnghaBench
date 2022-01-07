
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winlink {int window; } ;
struct window_pane {int dummy; } ;
struct session {int dummy; } ;
struct mouse_event {int wp; } ;


 struct winlink* cmd_mouse_window (struct mouse_event*,struct session**) ;
 int window_has_pane (int ,struct window_pane*) ;
 struct window_pane* window_pane_find_by_id (int ) ;

struct window_pane *
cmd_mouse_pane(struct mouse_event *m, struct session **sp,
    struct winlink **wlp)
{
 struct winlink *wl;
 struct window_pane *wp;

 if ((wl = cmd_mouse_window(m, sp)) == ((void*)0))
  return (((void*)0));
 if ((wp = window_pane_find_by_id(m->wp)) == ((void*)0))
  return (((void*)0));
 if (!window_has_pane(wl->window, wp))
  return (((void*)0));

 if (wlp != ((void*)0))
  *wlp = wl;
 return (wp);
}
