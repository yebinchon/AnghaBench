
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_ev {int refcnt; } ;
struct command {int dummy; } ;
struct arg {int peer_id; } ;


 int TLS ;
 int assert (int) ;
 int print_success_gw ;
 int tgl_do_send_typing (int ,int ,int ,int ,struct in_ev*) ;
 int tgl_typing_cancel ;

void do_send_typing_abort (struct command *command, int arg_num, struct arg args[], struct in_ev *ev) {
  assert (arg_num == 1);
  if (ev) { ev->refcnt ++; }
  tgl_do_send_typing (TLS, args[0].peer_id, tgl_typing_cancel, print_success_gw, ev);
}
