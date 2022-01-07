
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_ev {int refcnt; } ;
struct command {int dummy; } ;
struct arg {scalar_t__ num; int peer_id; } ;


 scalar_t__ NOT_FOUND ;
 int TLS ;
 int assert (int) ;
 int offline_mode ;
 int print_msg_list_history_gw ;
 int tgl_do_get_history (int ,int ,scalar_t__,int,int ,int ,struct in_ev*) ;

void do_history (struct command *command, int arg_num, struct arg args[], struct in_ev *ev) {
  assert (arg_num == 3);
  if (ev) { ev->refcnt ++; }
  tgl_do_get_history (TLS, args[0].peer_id, args[2].num != NOT_FOUND ? args[2].num : 0, args[1].num != NOT_FOUND ? args[1].num : 40, offline_mode, print_msg_list_history_gw, ev);
}
