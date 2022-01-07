
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_ev {int refcnt; } ;
struct command {int dummy; } ;
struct arg {int str; } ;


 int TLS ;
 int assert (int) ;
 int print_peer_gw ;
 int strlen (int ) ;
 int tgl_do_contact_search (int ,int ,int ,int ,struct in_ev*) ;

void do_resolve_username (struct command *command, int arg_num, struct arg args[], struct in_ev *ev) {
  assert (arg_num == 1);
  if (ev) { ev->refcnt ++; }
  tgl_do_contact_search (TLS, args[0].str, strlen (args[0].str), print_peer_gw, ev);
}
