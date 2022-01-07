
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct client {int flags; int retval; int peer; int stderr_data; int stdout_data; int stdin_data; } ;


 int CLIENT_ATTACHED ;
 int CLIENT_EXIT ;
 int CLIENT_EXITED ;
 scalar_t__ EVBUFFER_LENGTH (int ) ;
 int MSG_EXIT ;
 int notify_client (char*,struct client*) ;
 int proc_send (int ,int ,int,int *,int) ;

__attribute__((used)) static void
server_client_check_exit(struct client *c)
{
 if (~c->flags & CLIENT_EXIT)
  return;
 if (c->flags & CLIENT_EXITED)
  return;

 if (EVBUFFER_LENGTH(c->stdin_data) != 0)
  return;
 if (EVBUFFER_LENGTH(c->stdout_data) != 0)
  return;
 if (EVBUFFER_LENGTH(c->stderr_data) != 0)
  return;

 if (c->flags & CLIENT_ATTACHED)
  notify_client("client-detached", c);
 proc_send(c->peer, MSG_EXIT, -1, &c->retval, sizeof c->retval);
 c->flags |= CLIENT_EXITED;
}
