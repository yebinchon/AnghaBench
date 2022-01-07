
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lnum; scalar_t__ col; } ;
typedef TYPE_1__ pos_T ;
typedef int colnr_T ;
struct TYPE_5__ {int w_set_curswant; TYPE_1__ w_cursor; } ;


 int FDO_HOR ;
 scalar_t__ KeyTyped ;
 scalar_t__ MAXCOL ;
 scalar_t__ OK ;
 int TRUE ;
 int coladvance (int ) ;
 TYPE_3__* curwin ;
 int fdo_flags ;
 int foldOpenCursor () ;
 int im_is_preediting () ;
 scalar_t__ oneleft () ;
 int p_ww ;
 int revins_chars ;
 int revins_legal ;
 int revins_scol ;
 int start_arrow (TYPE_1__*) ;
 int undisplay_dollar () ;
 int vim_beep () ;
 int * vim_strchr (int ,char) ;

__attribute__((used)) static void
ins_left()
{
    pos_T tpos;





    undisplay_dollar();
    tpos = curwin->w_cursor;
    if (oneleft() == OK)
    {





     start_arrow(&tpos);






    }





    else if (vim_strchr(p_ww, '[') != ((void*)0) && curwin->w_cursor.lnum > 1)
    {
 start_arrow(&tpos);
 --(curwin->w_cursor.lnum);
 coladvance((colnr_T)MAXCOL);
 curwin->w_set_curswant = TRUE;
    }
    else
 vim_beep();
}
