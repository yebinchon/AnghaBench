
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_ev {int bev; } ;
struct command {int dummy; } ;
struct arg {int dummy; } ;


 int BEV_EVENT_EOF ;
 scalar_t__ daemonize ;
 int do_halt (int ) ;
 int event_incoming (int ,int ,struct in_ev*) ;

void do_quit (struct command *command, int arg_num, struct arg args[], struct in_ev *ev) {
  if (daemonize) {
    event_incoming (ev->bev, BEV_EVENT_EOF, ev);
  }
  do_halt (0);
}
