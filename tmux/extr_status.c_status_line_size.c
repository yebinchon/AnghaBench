
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct session {int statuslines; } ;
struct client {int flags; struct session* session; } ;


 int CLIENT_CONTROL ;
 int CLIENT_STATUSOFF ;

u_int
status_line_size(struct client *c)
{
 struct session *s = c->session;

 if (c->flags & (CLIENT_STATUSOFF|CLIENT_CONTROL))
  return (0);
 return (s->statuslines);
}
