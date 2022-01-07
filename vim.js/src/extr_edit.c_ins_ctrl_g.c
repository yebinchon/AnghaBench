
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int w_cursor; } ;




 int Insstart ;


 int TRUE ;
 TYPE_1__* curwin ;
 int ins_down (int ) ;
 int ins_need_undo ;
 int ins_up (int ) ;
 int no_mapping ;
 int plain_vgetc () ;
 int setcursor () ;
 int u_sync (int ) ;
 int vim_beep () ;

__attribute__((used)) static void
ins_ctrl_g()
{
    int c;
    ++no_mapping;
    c = plain_vgetc();
    --no_mapping;
    switch (c)
    {

 case 128:
 case 130:
 case 'k': ins_up(TRUE);
    break;


 case 129:
 case 131:
 case 'j': ins_down(TRUE);
    break;


 case 'u': u_sync(TRUE);
    ins_need_undo = TRUE;



    Insstart = curwin->w_cursor;
    break;


 default: vim_beep();
    }
}
