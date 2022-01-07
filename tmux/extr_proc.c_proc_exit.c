
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmuxproc {int exit; } ;



void
proc_exit(struct tmuxproc *tp)
{
 tp->exit = 1;
}
