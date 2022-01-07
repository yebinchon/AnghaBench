
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window_pane {int modes; } ;
struct window_mode_entry {struct window_copy_mode_data* data; int * mode; } ;
struct window_copy_mode_data {int dragtimer; } ;
struct mouse_event {int dummy; } ;
struct client {int dummy; } ;


 struct window_mode_entry* TAILQ_FIRST (int *) ;
 struct window_pane* cmd_mouse_pane (struct mouse_event*,int *,int *) ;
 int evtimer_del (int *) ;
 int window_copy_mode ;
 int window_view_mode ;

__attribute__((used)) static void
window_copy_drag_release(struct client *c, struct mouse_event *m)
{
 struct window_pane *wp;
 struct window_mode_entry *wme;
 struct window_copy_mode_data *data;

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
}
