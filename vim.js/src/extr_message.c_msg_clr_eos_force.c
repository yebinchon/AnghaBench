
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ Columns ;
 scalar_t__ Rows ;
 scalar_t__* T_CD ;
 scalar_t__* T_CE ;
 scalar_t__ cmdmsg_rl ;
 scalar_t__ full_screen ;
 int msg_col ;
 int msg_row ;
 scalar_t__ msg_use_printf () ;
 int out_str (scalar_t__*) ;
 int screen_fill (int,int,int,int,char,char,int ) ;

void
msg_clr_eos_force()
{
    if (msg_use_printf())
    {
 if (full_screen)
 {
     if (*T_CD)
  out_str(T_CD);
     else if (*T_CE)
  out_str(T_CE);
 }
    }
    else
    {
 {
     screen_fill(msg_row, msg_row + 1, msg_col, (int)Columns,
         ' ', ' ', 0);
     screen_fill(msg_row + 1, (int)Rows, 0, (int)Columns, ' ', ' ', 0);
 }
    }
}
