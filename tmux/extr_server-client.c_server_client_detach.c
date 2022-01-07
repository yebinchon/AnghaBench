
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct session {int name; } ;
struct client {int flags; int peer; struct session* session; } ;
typedef enum msgtype { ____Placeholder_msgtype } msgtype ;


 int CLIENT_DETACHING ;
 int notify_client (char*,struct client*) ;
 int proc_send (int ,int,int,int ,scalar_t__) ;
 scalar_t__ strlen (int ) ;

void
server_client_detach(struct client *c, enum msgtype msgtype)
{
 struct session *s = c->session;

 if (s == ((void*)0) || (c->flags & CLIENT_DETACHING))
  return;

 c->flags |= CLIENT_DETACHING;
 notify_client("client-detached", c);
 proc_send(c->peer, msgtype, -1, s->name, strlen(s->name) + 1);
}
