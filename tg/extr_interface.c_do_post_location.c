
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_ev {int refcnt; } ;
struct command {int dummy; } ;
struct arg {int dval; int peer_id; } ;


 int TGLMF_POST_AS_CHANNEL ;
 int TGL_SEND_MSG_FLAG_REPLY (int ) ;
 int TLS ;
 int assert (int) ;
 int print_msg_success_gw ;
 int reply_id ;
 int tgl_do_send_location (int ,int ,int ,int ,int,int ,struct in_ev*) ;

void do_post_location (struct command *command, int arg_num, struct arg args[], struct in_ev *ev) {
  assert (arg_num == 3);
  if (ev) { ev->refcnt ++; }
  tgl_do_send_location (TLS, args[0].peer_id, args[1].dval, args[2].dval, TGL_SEND_MSG_FLAG_REPLY(reply_id) | TGLMF_POST_AS_CHANNEL, print_msg_success_gw, ev);
}
