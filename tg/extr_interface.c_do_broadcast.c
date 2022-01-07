
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tgl_peer_id_t ;
struct in_ev {int refcnt; } ;
struct command {int dummy; } ;
struct arg {int str; int peer_id; } ;


 int TLS ;
 int assert (int) ;
 int disable_msg_preview ;
 int do_html ;
 int print_msg_list_success_gw ;
 int strlen (int ) ;
 int tgl_do_send_broadcast (int ,int,int *,int ,int ,int,int ,struct in_ev*) ;

void do_broadcast (struct command *command, int arg_num, struct arg args[], struct in_ev *ev) {
  assert (arg_num >= 1 && arg_num <= 1000);
  static tgl_peer_id_t ids[1000];
  int i;
  for (i = 0; i < arg_num - 1; i++) {
    ids[i] = args[i].peer_id;
  }
  if (ev) { ev->refcnt ++; }
  tgl_do_send_broadcast (TLS, arg_num - 1, ids, args[arg_num - 1].str, strlen (args[arg_num - 1].str), disable_msg_preview | do_html, print_msg_list_success_gw, ev);
}
