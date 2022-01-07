
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_ev {int refcnt; } ;
struct command {int dummy; } ;
struct arg {int msg_id; } ;


 int ARG2STR (int) ;
 int TLS ;
 int assert (int) ;
 int disable_msg_preview ;
 int do_html ;
 int print_msg_success_gw ;
 int tgl_do_reply_message (int ,int *,int ,int,int ,struct in_ev*) ;

void do_reply (struct command *command, int arg_num, struct arg args[], struct in_ev *ev) {
  assert (arg_num == 2);
  if (ev) { ev->refcnt ++; }
  tgl_do_reply_message (TLS, &args[0].msg_id, ARG2STR(1), disable_msg_preview | do_html, print_msg_success_gw, ev);
}
