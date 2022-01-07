
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_ev {int refcnt; } ;
struct command {int dummy; } ;
struct arg {int * str; int peer_id; } ;


 unsigned long long TGL_SEND_MSG_FLAG_REPLY (int ) ;
 int TLS ;
 int assert (int) ;
 int print_msg_success_gw ;
 int reply_id ;
 int strlen (int *) ;
 int tgl_do_send_document (int ,int ,int *,int *,int ,unsigned long long,int ,struct in_ev*) ;

__attribute__((used)) static void _do_send_file (struct command *command, int arg_num, struct arg args[], struct in_ev *ev, unsigned long long flags) {
  assert (arg_num >= 2);
  if (ev) { ev->refcnt ++; }
  tgl_do_send_document (TLS, args[0].peer_id, args[1].str, arg_num == 2 ? ((void*)0) : args[2].str, arg_num == 2 ? 0 : strlen (args[2].str), flags | TGL_SEND_MSG_FLAG_REPLY (reply_id), print_msg_success_gw, ev);
}
