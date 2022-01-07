
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_ev {int refcnt; } ;
struct command {int dummy; } ;
struct arg {scalar_t__ num; } ;


 scalar_t__ NOT_FOUND ;
 int TLS ;
 int assert (int) ;
 int print_dialog_list_gw ;
 int tgl_do_get_channels_dialog_list (int ,int,scalar_t__,int ,struct in_ev*) ;

void do_channel_list (struct command *command, int arg_num, struct arg args[], struct in_ev *ev) {
  assert (arg_num <= 2);
  if (ev) { ev->refcnt ++; }
  tgl_do_get_channels_dialog_list (TLS, args[0].num != NOT_FOUND ? args[0].num : 100, args[1].num != NOT_FOUND ? args[1].num : 0, print_dialog_list_gw, ev);
}
