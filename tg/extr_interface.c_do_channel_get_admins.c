
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_ev {int refcnt; } ;
struct command {int dummy; } ;
struct arg {int num; int peer_id; } ;


 int NOT_FOUND ;
 int TLS ;
 int assert (int) ;
 int print_user_list_gw ;
 int tgl_do_channel_get_members (int ,int ,int,int,int,int ,struct in_ev*) ;

void do_channel_get_admins (struct command *command, int arg_num, struct arg args[], struct in_ev *ev) {
  assert (arg_num == 3);
  if (ev) { ev->refcnt ++; }
  tgl_do_channel_get_members (TLS, args[0].peer_id, args[1].num == NOT_FOUND ? 100 : args[1].num, args[2].num == NOT_FOUND ? 0 : args[2].num, 1, print_user_list_gw, ev);
}
