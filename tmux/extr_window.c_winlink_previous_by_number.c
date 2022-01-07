
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winlink {int dummy; } ;
struct session {int windows; } ;


 struct winlink* RB_MAX (int ,int *) ;
 struct winlink* RB_PREV (int ,int ,struct winlink*) ;
 int winlinks ;
 int wwl ;

struct winlink *
winlink_previous_by_number(struct winlink *wl, struct session *s, int n)
{
 for (; n > 0; n--) {
  if ((wl = RB_PREV(winlinks, wwl, wl)) == ((void*)0))
   wl = RB_MAX(winlinks, &s->windows);
 }

 return (wl);
}
