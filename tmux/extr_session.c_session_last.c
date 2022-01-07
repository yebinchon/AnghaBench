
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winlink {int dummy; } ;
struct session {struct winlink* curw; int lastw; } ;


 struct winlink* TAILQ_FIRST (int *) ;
 int session_set_current (struct session*,struct winlink*) ;

int
session_last(struct session *s)
{
 struct winlink *wl;

 wl = TAILQ_FIRST(&s->lastw);
 if (wl == ((void*)0))
  return (-1);
 if (wl == s->curw)
  return (1);

 return (session_set_current(s, wl));
}
