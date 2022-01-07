
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winlink {int window; } ;
struct session {struct winlink* curw; int lastw; } ;


 int notify_session (char*,struct session*) ;
 int tty_update_window_offset (int ) ;
 int window_update_activity (int ) ;
 int winlink_clear_flags (struct winlink*) ;
 int winlink_stack_push (int *,struct winlink*) ;
 int winlink_stack_remove (int *,struct winlink*) ;

int
session_set_current(struct session *s, struct winlink *wl)
{
 if (wl == ((void*)0))
  return (-1);
 if (wl == s->curw)
  return (1);

 winlink_stack_remove(&s->lastw, wl);
 winlink_stack_push(&s->lastw, s->curw);
 s->curw = wl;
 winlink_clear_flags(wl);
 window_update_activity(wl->window);
 tty_update_window_offset(wl->window);
 notify_session("session-window-changed", s);
 return (0);
}
