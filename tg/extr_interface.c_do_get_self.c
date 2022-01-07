
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct in_ev {int refcnt; } ;
struct command {int dummy; } ;
struct arg {int dummy; } ;
struct TYPE_3__ {int our_id; } ;


 TYPE_1__* TLS ;
 int print_user_info_gw ;
 int tgl_do_get_user_info (TYPE_1__*,int ,int ,int ,struct in_ev*) ;

void do_get_self(struct command *command, int arg_num, struct arg args[], struct in_ev *ev) {
  if (ev) { ev->refcnt ++; }
  tgl_do_get_user_info (TLS, TLS->our_id, 0, print_user_info_gw, ev);
}
