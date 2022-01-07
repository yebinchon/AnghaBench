
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_ev {int refcnt; } ;
struct command {int dummy; } ;
struct arg {int peer_id; } ;


 int ARG2STR (int) ;
 int E_DEBUG ;
 int TGL_SEND_MSG_FLAG_REPLY (int ) ;
 int TLS ;
 int assert (int) ;
 int disable_msg_preview ;
 int do_html ;
 int print_msg_success_gw ;
 int reply_id ;
 int tgl_do_send_message (int ,int ,int ,int,int *,int ,struct in_ev*) ;
 int vlogprintf (int ,char*,int ,int) ;

void do_msg (struct command *command, int arg_num, struct arg args[], struct in_ev *ev) {
  assert (arg_num == 2);
  if (ev) { ev->refcnt ++; }
  vlogprintf (E_DEBUG, "reply_id=%d, disable=%d\n", reply_id, disable_msg_preview);
  tgl_do_send_message (TLS, args[0].peer_id, ARG2STR(1), TGL_SEND_MSG_FLAG_REPLY(reply_id) | disable_msg_preview | do_html, ((void*)0), print_msg_success_gw, ev);
}
