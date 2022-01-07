
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winlink {int dummy; } ;
struct window {int dummy; } ;
struct session {int windows; struct winlink* curw; } ;
struct mouse_event {int s; int w; int valid; } ;


 struct session* session_find_by_id (int) ;
 struct window* window_find_by_id (int) ;
 struct winlink* winlink_find_by_window (int *,struct window*) ;

struct winlink *
cmd_mouse_window(struct mouse_event *m, struct session **sp)
{
 struct session *s;
 struct window *w;
 struct winlink *wl;

 if (!m->valid)
  return (((void*)0));
 if (m->s == -1 || (s = session_find_by_id(m->s)) == ((void*)0))
  return (((void*)0));
 if (m->w == -1)
  wl = s->curw;
 else {
  if ((w = window_find_by_id(m->w)) == ((void*)0))
   return (((void*)0));
  wl = winlink_find_by_window(&s->windows, w);
 }
 if (sp != ((void*)0))
  *sp = s;
 return (wl);
}
