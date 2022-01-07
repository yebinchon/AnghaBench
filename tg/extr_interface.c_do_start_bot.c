
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_ev {int refcnt; } ;
struct command {int dummy; } ;
struct arg {int peer_id; } ;


 int ARG2STR (int) ;
 int TLS ;
 int assert (int) ;
 int print_success_gw ;
 int tgl_do_start_bot (int ,int ,int ,int ,int ,struct in_ev*) ;

void do_start_bot (struct command *command, int arg_num, struct arg args[], struct in_ev *ev) {
  assert (arg_num == 3);
  if (ev) { ev->refcnt ++; }
  tgl_do_start_bot (TLS, args[0].peer_id, args[1].peer_id, ARG2STR(2), print_success_gw, ev);
}
