
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct session {int dummy; } ;
struct msg_stdin_data {int size; int data; } ;
struct TYPE_5__ {int len; int type; } ;
struct imsg {char* data; TYPE_1__ hdr; } ;
struct TYPE_6__ {int fd; } ;
struct client {int flags; int stdin_closed; int activity_time; TYPE_2__ tty; struct session* session; int peer; int stdin_callback_data; int (* stdin_callback ) (struct client*,int,int ) ;int stdin_data; } ;
typedef int ssize_t ;


 int CLIENT_CONTROL ;
 int CLIENT_DEAD ;
 int CLIENT_SUSPENDED ;
 int IMSG_HEADER_SIZE ;

 int MSG_EXITED ;
 int evbuffer_add (int ,int ,int ) ;
 int fatal (char*) ;
 int fatalx (char*) ;
 int gettimeofday (int *,int *) ;
 int memcpy (struct msg_stdin_data*,char const*,int) ;
 int notify_client (char*,struct client*) ;
 int proc_send (int ,int ,int,int *,int ) ;
 int recalculate_sizes () ;
 int server_client_clear_overlay (struct client*) ;
 int server_client_dispatch_command (struct client*,struct imsg*) ;
 int server_client_dispatch_identify (struct client*,struct imsg*) ;
 int server_client_dispatch_shell (struct client*) ;
 int server_client_lost (struct client*) ;
 int server_client_update_latest (struct client*) ;
 int server_redraw_client (struct client*) ;
 int session_update_activity (struct session*,int *) ;
 int stub1 (struct client*,int,int ) ;
 int tty_close (TYPE_2__*) ;
 int tty_resize (TYPE_2__*) ;
 int tty_start_tty (TYPE_2__*) ;

__attribute__((used)) static void
server_client_dispatch(struct imsg *imsg, void *arg)
{
 struct client *c = arg;
 struct msg_stdin_data stdindata;
 const char *data;
 ssize_t datalen;
 struct session *s;

 if (c->flags & CLIENT_DEAD)
  return;

 if (imsg == ((void*)0)) {
  server_client_lost(c);
  return;
 }

 data = imsg->data;
 datalen = imsg->hdr.len - IMSG_HEADER_SIZE;

 switch (imsg->hdr.type) {
 case 136:
 case 134:
 case 133:
 case 139:
 case 135:
 case 137:
 case 140:
 case 138:
  server_client_dispatch_identify(c, imsg);
  break;
 case 142:
  server_client_dispatch_command(c, imsg);
  break;
 case 130:
  if (datalen != sizeof stdindata)
   fatalx("bad MSG_STDIN size");
  memcpy(&stdindata, data, sizeof stdindata);

  if (c->stdin_callback == ((void*)0))
   break;
  if (stdindata.size <= 0)
   c->stdin_closed = 1;
  else {
   evbuffer_add(c->stdin_data, stdindata.data,
       stdindata.size);
  }
  c->stdin_callback(c, c->stdin_closed, c->stdin_callback_data);
  break;
 case 132:
  if (datalen != 0)
   fatalx("bad MSG_RESIZE size");

  if (c->flags & CLIENT_CONTROL)
   break;
  server_client_update_latest(c);
  server_client_clear_overlay(c);
  tty_resize(&c->tty);
  recalculate_sizes();
  server_redraw_client(c);
  if (c->session != ((void*)0))
   notify_client("client-resized", c);
  break;
 case 141:
  if (datalen != 0)
   fatalx("bad MSG_EXITING size");

  c->session = ((void*)0);
  tty_close(&c->tty);
  proc_send(c->peer, MSG_EXITED, -1, ((void*)0), 0);
  break;
 case 128:
 case 129:
  if (datalen != 0)
   fatalx("bad MSG_WAKEUP size");

  if (!(c->flags & CLIENT_SUSPENDED))
   break;
  c->flags &= ~CLIENT_SUSPENDED;

  if (c->tty.fd == -1)
   break;
  s = c->session;

  if (gettimeofday(&c->activity_time, ((void*)0)) != 0)
   fatal("gettimeofday failed");

  tty_start_tty(&c->tty);
  server_redraw_client(c);
  recalculate_sizes();

  if (s != ((void*)0))
   session_update_activity(s, &c->activity_time);
  break;
 case 131:
  if (datalen != 0)
   fatalx("bad MSG_SHELL size");

  server_client_dispatch_shell(c);
  break;
 }
}
