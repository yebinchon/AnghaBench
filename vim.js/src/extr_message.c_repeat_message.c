
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ASKMORE ;
 scalar_t__ CONFIRM ;
 scalar_t__ EXTERNCMD ;
 int FALSE ;
 scalar_t__ HITRETURN ;
 int Rows ;
 scalar_t__ SETWSIZE ;
 scalar_t__ State ;
 int TRUE ;
 int display_confirm_msg () ;
 int hit_return_msg () ;
 int msg_clr_eos () ;
 scalar_t__ msg_col ;
 int msg_didout ;
 int msg_moremsg (int ) ;
 int msg_row ;
 int windgoto (int,scalar_t__) ;

void
repeat_message()
{
    if (State == ASKMORE)
    {
 msg_moremsg(TRUE);
 msg_row = Rows - 1;
    }







    else if (State == EXTERNCMD)
    {
 windgoto(msg_row, msg_col);
    }
    else if (State == HITRETURN || State == SETWSIZE)
    {
 if (msg_row == Rows - 1)
 {



     msg_didout = FALSE;
     msg_col = 0;
     msg_clr_eos();
 }
 hit_return_msg();
 msg_row = Rows - 1;
    }
}
