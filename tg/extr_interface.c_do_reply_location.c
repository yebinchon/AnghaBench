
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_ev {int refcnt; } ;
struct command {int dummy; } ;
struct arg {int dval; int msg_id; } ;


 int TLS ;
 int assert (int) ;
 int print_msg_success_gw ;
 int tgl_do_reply_location (int ,int *,int ,int ,int ,int ,struct in_ev*) ;

void do_reply_location (struct command *command, int arg_num, struct arg args[], struct in_ev *ev) {
  assert (arg_num == 3);
  if (ev) { ev->refcnt ++; }
  tgl_do_reply_location (TLS, &args[0].msg_id, args[1].dval, args[2].dval, 0, print_msg_success_gw, ev);
}
