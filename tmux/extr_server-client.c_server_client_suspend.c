
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct session {int dummy; } ;
struct client {int flags; int peer; int tty; struct session* session; } ;


 int CLIENT_DETACHING ;
 int CLIENT_SUSPENDED ;
 int MSG_SUSPEND ;
 int proc_send (int ,int ,int,int *,int ) ;
 int tty_stop_tty (int *) ;

void
server_client_suspend(struct client *c)
{
 struct session *s = c->session;

 if (s == ((void*)0) || (c->flags & CLIENT_DETACHING))
  return;

 tty_stop_tty(&c->tty);
 c->flags |= CLIENT_SUSPENDED;
 proc_send(c->peer, MSG_SUSPEND, -1, ((void*)0), 0);
}
