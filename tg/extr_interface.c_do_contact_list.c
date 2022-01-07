
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_ev {int refcnt; } ;
struct command {int dummy; } ;
struct arg {int dummy; } ;


 int TLS ;
 int assert (int) ;
 int print_user_list_gw ;
 int tgl_do_update_contact_list (int ,int ,struct in_ev*) ;

void do_contact_list (struct command *command, int arg_num, struct arg args[], struct in_ev *ev) {
  assert (!arg_num);
  if (ev) { ev->refcnt ++; }
  tgl_do_update_contact_list (TLS, print_user_list_gw, ev);
}
