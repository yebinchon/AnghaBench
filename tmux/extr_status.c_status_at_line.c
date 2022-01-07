
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct session {int statusat; } ;
struct TYPE_2__ {int sy; } ;
struct client {int flags; TYPE_1__ tty; struct session* session; } ;


 int CLIENT_CONTROL ;
 int CLIENT_STATUSOFF ;
 int status_line_size (struct client*) ;

int
status_at_line(struct client *c)
{
 struct session *s = c->session;

 if (c->flags & (CLIENT_STATUSOFF|CLIENT_CONTROL))
  return (-1);
 if (s->statusat != 1)
  return (s->statusat);
 return (c->tty.sy - status_line_size(c));
}
