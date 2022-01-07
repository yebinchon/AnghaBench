
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winlink {int dummy; } ;
struct session {int windows; int * curw; } ;


 struct winlink* RB_MAX (int ,int *) ;
 struct winlink* session_previous_alert (struct winlink*) ;
 int session_set_current (struct session*,struct winlink*) ;
 struct winlink* winlink_previous (int *) ;
 int winlinks ;

int
session_previous(struct session *s, int alert)
{
 struct winlink *wl;

 if (s->curw == ((void*)0))
  return (-1);

 wl = winlink_previous(s->curw);
 if (alert)
  wl = session_previous_alert(wl);
 if (wl == ((void*)0)) {
  wl = RB_MAX(winlinks, &s->windows);
  if (alert && (wl = session_previous_alert(wl)) == ((void*)0))
   return (-1);
 }
 return (session_set_current(s, wl));
}
