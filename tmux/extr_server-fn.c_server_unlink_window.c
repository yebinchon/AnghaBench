
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winlink {int dummy; } ;
struct session {int dummy; } ;


 int server_destroy_session_group (struct session*) ;
 int server_redraw_session_group (struct session*) ;
 scalar_t__ session_detach (struct session*,struct winlink*) ;

void
server_unlink_window(struct session *s, struct winlink *wl)
{
 if (session_detach(s, wl))
  server_destroy_session_group(s);
 else
  server_redraw_session_group(s);
}
