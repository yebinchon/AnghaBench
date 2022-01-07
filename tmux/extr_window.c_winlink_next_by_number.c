
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winlink {int dummy; } ;
struct session {int windows; } ;


 struct winlink* RB_MIN (int ,int *) ;
 struct winlink* RB_NEXT (int ,int ,struct winlink*) ;
 int winlinks ;
 int wwl ;

struct winlink *
winlink_next_by_number(struct winlink *wl, struct session *s, int n)
{
 for (; n > 0; n--) {
  if ((wl = RB_NEXT(winlinks, wwl, wl)) == ((void*)0))
   wl = RB_MIN(winlinks, &s->windows);
 }

 return (wl);
}
