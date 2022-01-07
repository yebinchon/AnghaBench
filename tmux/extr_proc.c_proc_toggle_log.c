
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmuxproc {int name; } ;


 int log_toggle (int ) ;

void
proc_toggle_log(struct tmuxproc *tp)
{
 log_toggle(tp->name);
}
