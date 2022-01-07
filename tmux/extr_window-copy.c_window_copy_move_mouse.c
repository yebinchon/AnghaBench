
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct window_pane {int modes; } ;
struct window_mode_entry {int * mode; } ;
struct mouse_event {int dummy; } ;


 struct window_mode_entry* TAILQ_FIRST (int *) ;
 scalar_t__ cmd_mouse_at (struct window_pane*,struct mouse_event*,int *,int *,int ) ;
 struct window_pane* cmd_mouse_pane (struct mouse_event*,int *,int *) ;
 int window_copy_mode ;
 int window_copy_update_cursor (struct window_mode_entry*,int ,int ) ;
 int window_view_mode ;

__attribute__((used)) static void
window_copy_move_mouse(struct mouse_event *m)
{
 struct window_pane *wp;
 struct window_mode_entry *wme;
 u_int x, y;

 wp = cmd_mouse_pane(m, ((void*)0), ((void*)0));
 if (wp == ((void*)0))
  return;
 wme = TAILQ_FIRST(&wp->modes);
 if (wme == ((void*)0))
  return;
 if (wme->mode != &window_copy_mode && wme->mode != &window_view_mode)
  return;

 if (cmd_mouse_at(wp, m, &x, &y, 0) != 0)
  return;

 window_copy_update_cursor(wme, x, y);
}
