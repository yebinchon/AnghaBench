
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_ev {int refcnt; } ;
struct command {int dummy; } ;
struct arg {int * str; int msg_id; } ;


 int TLS ;
 int assert (int) ;
 int print_msg_success_gw ;
 int strlen (int *) ;
 int tgl_do_reply_document (int ,int *,int *,int *,int ,unsigned long long,int ,struct in_ev*) ;

void _do_reply_file (struct command *command, int arg_num, struct arg args[], struct in_ev *ev, unsigned long long flags) {
  assert (arg_num >= 2);
  if (ev) { ev->refcnt ++; }
  tgl_do_reply_document (TLS, &args[0].msg_id, args[1].str, arg_num == 2 ? ((void*)0) : args[2].str, arg_num == 2 ? 0 : strlen (args[2].str), flags, print_msg_success_gw, ev);
}
