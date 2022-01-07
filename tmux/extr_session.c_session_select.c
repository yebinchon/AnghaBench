
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winlink {int dummy; } ;
struct session {int windows; } ;


 int session_set_current (struct session*,struct winlink*) ;
 struct winlink* winlink_find_by_index (int *,int) ;

int
session_select(struct session *s, int idx)
{
 struct winlink *wl;

 wl = winlink_find_by_index(&s->windows, idx);
 return (session_set_current(s, wl));
}
