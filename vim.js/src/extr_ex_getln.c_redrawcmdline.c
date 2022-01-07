
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 scalar_t__ cmd_silent ;
 int compute_cmdrow () ;
 int cursorcmd () ;
 int need_wait_return ;
 int redrawcmd () ;

void
redrawcmdline()
{
    if (cmd_silent)
 return;
    need_wait_return = FALSE;
    compute_cmdrow();
    redrawcmd();
    cursorcmd();
}
