
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_ev {int dummy; } ;
struct command {int dummy; } ;
struct arg {int dummy; } ;


 int _do_send_file (struct command*,int,struct arg*,struct in_ev*,int ) ;

void do_send_document (struct command *command, int arg_num, struct arg args[], struct in_ev *ev) {
  _do_send_file (command, arg_num, args, ev, 0);
}
