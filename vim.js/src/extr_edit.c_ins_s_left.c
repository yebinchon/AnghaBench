
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lnum; scalar_t__ col; } ;
struct TYPE_4__ {int w_set_curswant; TYPE_1__ w_cursor; } ;


 int FALSE ;
 int FDO_HOR ;
 scalar_t__ KeyTyped ;
 int TRUE ;
 int bck_word (long,int ,int ) ;
 TYPE_2__* curwin ;
 int fdo_flags ;
 int foldOpenCursor () ;
 int start_arrow (TYPE_1__*) ;
 int undisplay_dollar () ;
 int vim_beep () ;

__attribute__((used)) static void
ins_s_left()
{




    undisplay_dollar();
    if (curwin->w_cursor.lnum > 1 || curwin->w_cursor.col > 0)
    {
 start_arrow(&curwin->w_cursor);
 (void)bck_word(1L, FALSE, FALSE);
 curwin->w_set_curswant = TRUE;
    }
    else
 vim_beep();
}
