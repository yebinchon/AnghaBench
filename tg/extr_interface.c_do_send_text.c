
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_ev {int refcnt; } ;
struct command {int dummy; } ;
struct arg {int str; int peer_id; } ;


 int TGL_SEND_MSG_FLAG_REPLY (int ) ;
 int TLS ;
 int assert (int) ;
 int disable_msg_preview ;
 int do_html ;
 int print_msg_success_gw ;
 int reply_id ;
 int tgl_do_send_text (int ,int ,int ,int,int ,struct in_ev*) ;

void do_send_text (struct command *command, int arg_num, struct arg args[], struct in_ev *ev) {
  assert (arg_num == 2);
  if (ev) { ev->refcnt ++; }
  tgl_do_send_text (TLS, args[0].peer_id, args[1].str, TGL_SEND_MSG_FLAG_REPLY(reply_id) | disable_msg_preview | do_html, print_msg_success_gw, ev);
}
