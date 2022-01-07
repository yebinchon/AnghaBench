
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winlink {int idx; } ;
struct session {int windows; } ;


 int INT_MAX ;
 int server_link_window (struct session*,struct winlink*,struct session*,int,int ,int ,int *) ;
 int server_unlink_window (struct session*,struct winlink*) ;
 struct winlink* winlink_find_by_index (int *,int) ;

int
winlink_shuffle_up(struct session *s, struct winlink *wl)
{
 int idx, last;

 if (wl == ((void*)0))
  return (-1);
 idx = wl->idx + 1;


 for (last = idx; last < INT_MAX; last++) {
  if (winlink_find_by_index(&s->windows, last) == ((void*)0))
   break;
 }
 if (last == INT_MAX)
  return (-1);


 for (; last > idx; last--) {
  wl = winlink_find_by_index(&s->windows, last - 1);
  server_link_window(s, wl, s, last, 0, 0, ((void*)0));
  server_unlink_window(s, wl);
 }

 return (idx);
}
