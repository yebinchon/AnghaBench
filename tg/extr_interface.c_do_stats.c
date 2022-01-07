
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_ev {int dummy; } ;
struct command {int dummy; } ;
struct arg {int dummy; } ;


 int TLS ;
 int assert (int) ;
 int fflush (int ) ;
 int mprint_end (struct in_ev*) ;
 int mprint_start (struct in_ev*) ;
 int mprintf (struct in_ev*,char*,char*) ;
 int stdout ;
 int tgl_print_stat (int ,char*,int) ;

void do_stats (struct command *command, int arg_num, struct arg args[], struct in_ev *ev) {
  assert (!arg_num);
  static char stat_buf[1 << 15];
  tgl_print_stat (TLS, stat_buf, (1 << 15) - 1);
  if (ev) { mprint_start (ev); }
  mprintf (ev, "%s\n", stat_buf);
  if (ev) { mprint_end (ev); }
  if (!ev) {
    fflush (stdout);
  }
}
