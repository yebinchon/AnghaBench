
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int w_wrow; } ;
typedef TYPE_1__ win_T ;
struct TYPE_8__ {int char_width; int char_height; scalar_t__ in_use; } ;


 int Columns ;
 int FALSE ;
 scalar_t__ W_ENDCOL (TYPE_1__*) ;
 int W_WINROW (TYPE_1__*) ;
 scalar_t__ Y_2_ROW (int) ;
 TYPE_1__* curwin ;
 TYPE_3__ gui ;
 int gui_mch_getmouse (int*,int*) ;
 int gui_mch_setmouse (int,int) ;
 int need_mouse_correct ;
 scalar_t__ p_mousef ;
 scalar_t__ tabline_height () ;
 int validate_cline_row () ;
 TYPE_1__* xy2win (int,int) ;

void
gui_mouse_correct()
{
    int x, y;
    win_T *wp = ((void*)0);

    need_mouse_correct = FALSE;

    if (!(gui.in_use && p_mousef))
 return;

    gui_mch_getmouse(&x, &y);

    if (x < 0 || x > Columns * gui.char_width)
 return;
    if (y >= 0



       )
 wp = xy2win(x, y);
    if (wp != curwin && wp != ((void*)0))
    {
 validate_cline_row();
 gui_mch_setmouse((int)W_ENDCOL(curwin) * gui.char_width - 3,
  (W_WINROW(curwin) + curwin->w_wrow) * gui.char_height
           + (gui.char_height) / 2);
    }
}
