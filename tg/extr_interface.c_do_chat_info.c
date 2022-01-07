
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_ev {int refcnt; } ;
struct command {int dummy; } ;
struct arg {int peer_id; } ;


 int TLS ;
 int assert (int) ;
 int offline_mode ;
 int print_chat_info_gw ;
 int tgl_do_get_chat_info (int ,int ,int ,int ,struct in_ev*) ;

void do_chat_info (struct command *command, int arg_num, struct arg args[], struct in_ev *ev) {
  assert (arg_num == 1);
  if (ev) { ev->refcnt ++; }
  tgl_do_get_chat_info (TLS, args[0].peer_id, offline_mode, print_chat_info_gw, ev);
}
