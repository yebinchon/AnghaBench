
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_ev {int refcnt; } ;
struct command {int dummy; } ;
struct arg {int dummy; } ;


 int free (struct in_ev*) ;
 struct in_ev* notify_ev ;

void do_main_session (struct command *command, int arg_num, struct arg args[], struct in_ev *ev) {
  if (notify_ev && !--notify_ev->refcnt) {
    free (notify_ev);
  }
  notify_ev = ev;
  if (ev) { ev->refcnt ++; }
}
