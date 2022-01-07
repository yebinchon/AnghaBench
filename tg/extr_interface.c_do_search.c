
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_ev {int refcnt; } ;
struct command {int dummy; } ;
struct arg {int num; int str; int peer_id; } ;


 int NOT_FOUND ;
 int TLS ;
 int assert (int) ;
 int print_msg_list_gw ;
 int strlen (int ) ;
 int tgl_do_msg_search (int ,int ,int,int,int,int,int ,int ,int ,struct in_ev*) ;

void do_search (struct command *command, int arg_num, struct arg args[], struct in_ev *ev) {
  assert (arg_num == 6);
  int limit;
  if (args[1].num != NOT_FOUND) {
    limit = args[1].num;
  } else {
    limit = 40;
  }
  int from;
  if (args[2].num != NOT_FOUND) {
    from = args[2].num;
  } else {
    from = 0;
  }
  int to;
  if (args[3].num != NOT_FOUND) {
    to = args[3].num;
  } else {
    to = 0;
  }
  int offset;
  if (args[4].num != NOT_FOUND) {
    offset = args[4].num;
  } else {
    offset = 0;
  }
  if (ev) { ev->refcnt ++; }
  tgl_do_msg_search (TLS, args[0].peer_id, from, to, limit, offset, args[5].str, strlen (args[5].str), print_msg_list_gw, ev);
}
