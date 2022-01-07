
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_ev {int refcnt; } ;
struct command {int dummy; } ;
struct arg {int msg_id; } ;


 int TLS ;
 int print_success_gw ;
 int tgl_do_delete_msg (int ,int *,int ,struct in_ev*) ;

void do_delete_msg (struct command *command, int arg_num, struct arg args[], struct in_ev *ev) {
  if (ev) { ev->refcnt ++; }
  tgl_do_delete_msg (TLS, &args[0].msg_id, print_success_gw, ev);
}
