
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_ev {int refcnt; } ;
struct command {int dummy; } ;
struct arg {int dummy; } ;


 int ARG2STR (int) ;
 int TLS ;
 int assert (int) ;
 int print_user_gw ;
 int tgl_do_set_profile_name (int ,int ,int ,int ,struct in_ev*) ;

void do_set_profile_name (struct command *command, int arg_num, struct arg args[], struct in_ev *ev) {
  assert (arg_num == 2);
  if (ev) { ev->refcnt ++; }
  tgl_do_set_profile_name (TLS, ARG2STR (0), ARG2STR (1), print_user_gw, ev);
}
