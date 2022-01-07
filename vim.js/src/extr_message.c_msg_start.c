
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;


 scalar_t__ Columns ;
 scalar_t__ EXMODE_NORMAL ;
 int FALSE ;
 int TRUE ;
 int cmdline_row ;
 scalar_t__ cmdmsg_rl ;
 int cursor_off () ;
 scalar_t__ exmode_active ;
 scalar_t__ full_screen ;
 int * keep_msg ;
 scalar_t__ lines_left ;
 int msg_clr_eos () ;
 scalar_t__ msg_col ;
 int msg_didany ;
 int msg_didout ;
 int msg_putchar (char) ;
 int msg_row ;
 int msg_scroll ;
 scalar_t__ msg_silent ;
 int msg_starthere () ;
 int need_clr_eos ;
 int redir_write (int *,int) ;
 int vim_free (int *) ;

void
msg_start()
{
    int did_return = FALSE;

    if (!msg_silent)
    {
 vim_free(keep_msg);
 keep_msg = ((void*)0);
    }
    if (!msg_scroll && full_screen)
    {
 msg_row = cmdline_row;
 msg_col =



     0;
    }
    else if (msg_didout)
    {
 msg_putchar('\n');
 did_return = TRUE;
 if (exmode_active != EXMODE_NORMAL)
     cmdline_row = msg_row;
    }
    if (!msg_didany || lines_left < 0)
 msg_starthere();
    if (msg_silent == 0)
    {
 msg_didout = FALSE;
 cursor_off();
    }


    if (!did_return)
 redir_write((char_u *)"\n", -1);
}
