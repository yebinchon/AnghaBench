
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct window_pane {int modes; } ;
struct window_mode_entry {struct window_copy_mode_data* data; int * mode; } ;
struct window_copy_mode_data {scalar_t__ cx; scalar_t__ cy; int dragtimer; int screen; } ;
struct timeval {int tv_usec; } ;
struct mouse_event {int dummy; } ;
struct client {int dummy; } ;


 struct window_mode_entry* TAILQ_FIRST (int *) ;
 int WINDOW_COPY_DRAG_REPEAT_TIME ;
 scalar_t__ cmd_mouse_at (struct window_pane*,struct mouse_event*,scalar_t__*,scalar_t__*,int ) ;
 struct window_pane* cmd_mouse_pane (struct mouse_event*,int *,int *) ;
 int evtimer_add (int *,struct timeval*) ;
 int evtimer_del (int *) ;
 int screen_size_y (int *) ;
 int window_copy_cursor_down (struct window_mode_entry*,int) ;
 int window_copy_cursor_up (struct window_mode_entry*,int) ;
 int window_copy_mode ;
 int window_copy_redraw_selection (struct window_mode_entry*,scalar_t__) ;
 int window_copy_update_cursor (struct window_mode_entry*,scalar_t__,scalar_t__) ;
 scalar_t__ window_copy_update_selection (struct window_mode_entry*,int) ;
 int window_view_mode ;

__attribute__((used)) static void
window_copy_drag_update(struct client *c, struct mouse_event *m)
{
 struct window_pane *wp;
 struct window_mode_entry *wme;
 struct window_copy_mode_data *data;
 u_int x, y, old_cx, old_cy;
 struct timeval tv = {
  .tv_usec = WINDOW_COPY_DRAG_REPEAT_TIME
 };

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

 data = wme->data;
 evtimer_del(&data->dragtimer);

 if (cmd_mouse_at(wp, m, &x, &y, 0) != 0)
  return;
 old_cx = data->cx;
 old_cy = data->cy;

 window_copy_update_cursor(wme, x, y);
 if (window_copy_update_selection(wme, 1))
  window_copy_redraw_selection(wme, old_cy);
 if (old_cy != data->cy || old_cx == data->cx) {
  if (y == 0) {
   evtimer_add(&data->dragtimer, &tv);
   window_copy_cursor_up(wme, 1);
  } else if (y == screen_size_y(&data->screen) - 1) {
   evtimer_add(&data->dragtimer, &tv);
   window_copy_cursor_down(wme, 1);
  }
 }
}
