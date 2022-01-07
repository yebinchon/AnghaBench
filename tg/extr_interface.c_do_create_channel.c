
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tgl_peer_id_t ;
struct in_ev {int refcnt; } ;
struct command {int dummy; } ;
struct arg {int peer_id; } ;


 int ARG2STR (int) ;
 int TLS ;
 int assert (int) ;
 int print_success_gw ;
 int tgl_do_create_channel (int ,int,int *,int ,int ,int,int ,struct in_ev*) ;

void do_create_channel (struct command *command, int arg_num, struct arg args[], struct in_ev *ev) {
  assert (arg_num >= 2 && arg_num <= 1000);
  static tgl_peer_id_t ids[1000];
  int i;
  for (i = 0; i < arg_num - 2; i++) {
    ids[i] = args[i + 2].peer_id;
  }

  if (ev) { ev->refcnt ++; }
  tgl_do_create_channel (TLS, arg_num - 2, ids, ARG2STR (0), ARG2STR (1), 1, print_success_gw, ev);
}
