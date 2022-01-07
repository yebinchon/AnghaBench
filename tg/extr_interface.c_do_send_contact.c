
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_ev {int refcnt; } ;
struct command {int dummy; } ;
struct arg {int peer_id; } ;


 int ARG2STR (int) ;
 int TGL_SEND_MSG_FLAG_REPLY (int ) ;
 int TLS ;
 int assert (int) ;
 int print_msg_success_gw ;
 int reply_id ;
 int tgl_do_send_contact (int ,int ,int ,int ,int ,int ,int ,struct in_ev*) ;

void do_send_contact (struct command *command, int arg_num, struct arg args[], struct in_ev *ev) {
  assert (arg_num == 4);
  if (ev) { ev->refcnt ++; }
  tgl_do_send_contact (TLS, args[0].peer_id, ARG2STR (1), ARG2STR (2), ARG2STR (3), TGL_SEND_MSG_FLAG_REPLY(reply_id), print_msg_success_gw, ev);
}
