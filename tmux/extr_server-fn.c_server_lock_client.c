
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int term; } ;
struct client {int flags; int peer; TYPE_2__ tty; TYPE_1__* session; } ;
struct TYPE_4__ {int options; } ;


 int CLIENT_CONTROL ;
 int CLIENT_SUSPENDED ;
 scalar_t__ IMSG_HEADER_SIZE ;
 scalar_t__ MAX_IMSGSIZE ;
 int MSG_LOCK ;
 int TTYC_CLEAR ;
 int TTYC_E3 ;
 int TTYC_SMCUP ;
 char* options_get_string (int ,char*) ;
 int proc_send (int ,int ,int,char const*,scalar_t__) ;
 scalar_t__ strlen (char const*) ;
 int tty_raw (TYPE_2__*,int ) ;
 int tty_stop_tty (TYPE_2__*) ;
 int tty_term_string (int ,int ) ;

void
server_lock_client(struct client *c)
{
 const char *cmd;

 if (c->flags & CLIENT_CONTROL)
  return;

 if (c->flags & CLIENT_SUSPENDED)
  return;

 cmd = options_get_string(c->session->options, "lock-command");
 if (*cmd == '\0' || strlen(cmd) + 1 > MAX_IMSGSIZE - IMSG_HEADER_SIZE)
  return;

 tty_stop_tty(&c->tty);
 tty_raw(&c->tty, tty_term_string(c->tty.term, TTYC_SMCUP));
 tty_raw(&c->tty, tty_term_string(c->tty.term, TTYC_CLEAR));
 tty_raw(&c->tty, tty_term_string(c->tty.term, TTYC_E3));

 c->flags |= CLIENT_SUSPENDED;
 proc_send(c->peer, MSG_LOCK, -1, cmd, strlen(cmd) + 1);
}
