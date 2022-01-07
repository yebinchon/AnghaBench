
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_ev {int dummy; } ;
struct command {int desc; scalar_t__ name; } ;
struct arg {int str; } ;


 int COLOR_YELLOW ;
 int assert (int) ;
 struct command* commands ;
 int fflush (int ) ;
 int mpop_color (struct in_ev*) ;
 int mprint_end (struct in_ev*) ;
 int mprint_start (struct in_ev*) ;
 int mprintf (struct in_ev*,char*,int ) ;
 int mpush_color (struct in_ev*,int ) ;
 int stdout ;
 int strcmp (int ,scalar_t__) ;

void do_help (struct command *command, int arg_num, struct arg args[], struct in_ev *ev) {
  assert (arg_num == 1);
  if (ev) { mprint_start (ev); }
  int total = 0;
  mpush_color (ev, COLOR_YELLOW);
  struct command *cmd = commands;
  while (cmd->name) {
    if (!args[0].str || !strcmp (args[0].str, cmd->name)) {
      mprintf (ev, "%s\n", cmd->desc);
      total ++;
    }
    cmd ++;
  }
  if (!total) {
    assert (arg_num == 1);
    mprintf (ev, "Unknown command '%s'\n", args[0].str);
  }
  mpop_color (ev);
  if (ev) { mprint_end (ev); }
  if (!ev) {
    fflush (stdout);
  }
}
