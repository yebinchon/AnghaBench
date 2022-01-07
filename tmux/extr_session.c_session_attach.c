
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winlink {struct session* session; } ;
struct window {int dummy; } ;
struct session {int windows; } ;


 int notify_session_window (char*,struct session*,struct window*) ;
 int session_group_synchronize_from (struct session*) ;
 struct winlink* winlink_add (int *,int) ;
 int winlink_set_window (struct winlink*,struct window*) ;
 int xasprintf (char**,char*,int) ;

struct winlink *
session_attach(struct session *s, struct window *w, int idx, char **cause)
{
 struct winlink *wl;

 if ((wl = winlink_add(&s->windows, idx)) == ((void*)0)) {
  xasprintf(cause, "index in use: %d", idx);
  return (((void*)0));
 }
 wl->session = s;
 winlink_set_window(wl, w);
 notify_session_window("window-linked", s, w);

 session_group_synchronize_from(s);
 return (wl);
}
