
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct window_pane {int modes; } ;
struct window_mode_entry {int * mode; } ;
struct mouse_event {int dummy; } ;
struct TYPE_2__ {int mouse_drag_release; int (* mouse_drag_update ) (struct client*,struct mouse_event*) ;} ;
struct client {TYPE_1__ tty; } ;


 struct window_mode_entry* TAILQ_FIRST (int *) ;
 scalar_t__ cmd_mouse_at (struct window_pane*,struct mouse_event*,int *,int *,int) ;
 struct window_pane* cmd_mouse_pane (struct mouse_event*,int *,int *) ;
 int window_copy_drag_release ;
 int window_copy_drag_update (struct client*,struct mouse_event*) ;
 int window_copy_mode ;
 int window_copy_redraw_screen (struct window_mode_entry*) ;
 int window_copy_start_selection (struct window_mode_entry*) ;
 int window_copy_update_cursor (struct window_mode_entry*,int ,int ) ;
 int window_view_mode ;

void
window_copy_start_drag(struct client *c, struct mouse_event *m)
{
 struct window_pane *wp;
 struct window_mode_entry *wme;
 u_int x, y;

 if (c == ((void*)0))
  return;

 wp = cmd_mouse_pane(m, ((void*)0), ((void*)0));
 if (wp == ((void*)0))
  return;
 wme = TAILQ_FIRST(&wp->modes);
 if (wme == ((void*)0))
  return;
 if (wme->mode != &window_copy_mode && wme->mode != &window_view_mode)
  return;

 if (cmd_mouse_at(wp, m, &x, &y, 1) != 0)
  return;

 c->tty.mouse_drag_update = window_copy_drag_update;
 c->tty.mouse_drag_release = window_copy_drag_release;

 window_copy_update_cursor(wme, x, y);
 window_copy_start_selection(wme);
 window_copy_redraw_screen(wme);

 window_copy_drag_update(c, m);
}
