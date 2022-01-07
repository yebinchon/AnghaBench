
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_ev {int refcnt; } ;
struct command {int dummy; } ;
struct arg {int msg_id; int peer_id; } ;


 int TLS ;
 int assert (int) ;
 int print_msg_success_gw ;
 int tgl_do_forward_media (int ,int ,int *,int ,int ,struct in_ev*) ;

void do_fwd_media (struct command *command, int arg_num, struct arg args[], struct in_ev *ev) {
  assert (arg_num == 2);
  if (ev) { ev->refcnt ++; }
  tgl_do_forward_media (TLS, args[0].peer_id, &args[1].msg_id, 0, print_msg_success_gw, ev);
}
