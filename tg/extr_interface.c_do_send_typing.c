
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_ev {int refcnt; } ;
struct command {int dummy; } ;
struct arg {int num; int peer_id; } ;
typedef enum tgl_typing_status { ____Placeholder_tgl_typing_status } tgl_typing_status ;


 int ENOSYS ;
 int NOT_FOUND ;
 int TLS ;
 int assert (int) ;
 int fail_interface (int ,struct in_ev*,int ,char*) ;
 int print_success_gw ;
 int tgl_do_send_typing (int ,int ,int,int ,struct in_ev*) ;
 int tgl_typing_typing ;

void do_send_typing (struct command *command, int arg_num, struct arg args[], struct in_ev *ev) {
  assert (arg_num == 2);
  enum tgl_typing_status status = tgl_typing_typing;
  if (args[1].num != NOT_FOUND) {
    if (args[1].num > 0 && args[1].num > 10) {
      fail_interface (TLS, ev, ENOSYS, "illegal typing status");
      return;
    }
    status = (enum tgl_typing_status) args[1].num;
  }
  if (ev) { ev->refcnt ++; }
  tgl_do_send_typing (TLS, args[0].peer_id, status, print_success_gw, ev);
}
