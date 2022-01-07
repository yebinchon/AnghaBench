
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_ev {int refcnt; } ;
struct command {int dummy; } ;
struct arg {int dummy; } ;


 int ARG2STR (int ) ;
 int TLS ;
 int assert (int) ;
 int print_success_gw ;
 int tgl_do_set_phone_number (int ,int ,int ,struct in_ev*) ;

void do_set_phone_number (struct command *command, int arg_num, struct arg args[], struct in_ev *ev) {
  assert (arg_num == 1);
  if (ev) { ev->refcnt ++; }
  tgl_do_set_phone_number (TLS, ARG2STR (0), print_success_gw, ev);
}
