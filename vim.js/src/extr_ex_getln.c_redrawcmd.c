
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cmdlen; int * cmdbuff; } ;


 void* FALSE ;
 void* TRUE ;
 TYPE_1__ ccline ;
 scalar_t__ cmd_silent ;
 int cmdline_row ;
 int draw_cmdline (int ,int ) ;
 int msg_clr_eos () ;
 void* msg_no_more ;
 void* msg_scroll ;
 int msg_start () ;
 int redrawcmdprompt () ;
 int set_cmdspos_cursor () ;
 void* skip_redraw ;
 int windgoto (int ,int ) ;

void
redrawcmd()
{
    if (cmd_silent)
 return;


    if (ccline.cmdbuff == ((void*)0))
    {
 windgoto(cmdline_row, 0);
 msg_clr_eos();
 return;
    }

    msg_start();
    redrawcmdprompt();


    msg_no_more = TRUE;
    draw_cmdline(0, ccline.cmdlen);
    msg_clr_eos();
    msg_no_more = FALSE;

    set_cmdspos_cursor();





    msg_scroll = FALSE;



    skip_redraw = FALSE;
}
