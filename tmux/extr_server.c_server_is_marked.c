
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct winlink {int dummy; } ;
struct window_pane {int dummy; } ;
struct session {int dummy; } ;
struct TYPE_2__ {struct window_pane* wp; struct winlink* wl; struct session* s; } ;


 TYPE_1__ marked_pane ;
 int server_check_marked () ;

int
server_is_marked(struct session *s, struct winlink *wl, struct window_pane *wp)
{
 if (s == ((void*)0) || wl == ((void*)0) || wp == ((void*)0))
  return (0);
 if (marked_pane.s != s || marked_pane.wl != wl)
  return (0);
 if (marked_pane.wp != wp)
  return (0);
 return (server_check_marked());
}
