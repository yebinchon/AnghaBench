
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cmdlen; scalar_t__ cmdpos; scalar_t__ cmdbuff; } ;


 int FALSE ;
 int TRUE ;
 TYPE_1__ ccline ;
 scalar_t__ cmd_silent ;
 int cursorcmd () ;
 int draw_cmdline (scalar_t__,int) ;
 scalar_t__ has_mbyte ;
 int mb_ptr2len (scalar_t__) ;
 int msg_no_more ;
 int msg_putchar (char) ;
 int stub1 (scalar_t__) ;

void
unputcmdline()
{
    if (cmd_silent)
 return;
    msg_no_more = TRUE;
    if (ccline.cmdlen == ccline.cmdpos)
 msg_putchar(' ');





    else
 draw_cmdline(ccline.cmdpos, 1);
    msg_no_more = FALSE;
    cursorcmd();
}
