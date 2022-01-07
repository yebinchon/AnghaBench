
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmuxproc {int name; int exit; } ;


 int EVLOOP_ONCE ;
 int event_loop (int ) ;
 int log_debug (char*,int ) ;

void
proc_loop(struct tmuxproc *tp, int (*loopcb)(void))
{
 log_debug("%s loop enter", tp->name);
 do
  event_loop(EVLOOP_ONCE);
 while (!tp->exit && (loopcb == ((void*)0) || !loopcb ()));
 log_debug("%s loop exit", tp->name);
}
