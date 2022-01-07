
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_ev {int dummy; } ;
struct command {int dummy; } ;
struct arg {int dummy; } ;


 int COLOR_YELLOW ;
 int TELEGRAM_CLI_VERSION ;
 int TGL_VERSION ;
 int assert (int) ;
 int fflush (int ) ;
 int mpop_color (struct in_ev*) ;
 int mprint_end (struct in_ev*) ;
 int mprint_start (struct in_ev*) ;
 int mprintf (struct in_ev*,char*,...) ;
 int mpush_color (struct in_ev*,int ) ;
 int stdout ;

void do_version (struct command *command, int arg_num, struct arg args[], struct in_ev *ev) {
  assert (!arg_num);
  if (ev) { mprint_start (ev); }
  mpush_color (ev, COLOR_YELLOW);
  mprintf (ev, "Telegram-cli version %s (uses tgl version %s)\n", TELEGRAM_CLI_VERSION, TGL_VERSION);



    mprintf (ev, "uses libopenssl for encryption\n");

  mpop_color (ev);
  if (ev) { mprint_end (ev); }
  if (!ev) {
    fflush (stdout);
  }

}
