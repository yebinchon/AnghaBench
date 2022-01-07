
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ col; scalar_t__ cursor_col; scalar_t__ row; scalar_t__ cursor_row; scalar_t__ cursor_is_valid; int back_pixel; int norm_pixel; } ;


 scalar_t__ FALSE ;
 int GUI_MON_IS_CURSOR ;
 int GUI_MON_NOCLEAR ;
 scalar_t__ composing_hangul ;
 int composing_hangul_buffer ;
 TYPE_1__ gui ;
 int gui_outstr_nowrap (int ,int,int,int ,int ,int ) ;
 scalar_t__ gui_redraw_block (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ;

void
gui_undraw_cursor()
{
    if (gui.cursor_is_valid)
    {
 if (gui_redraw_block(gui.cursor_row, gui.cursor_col,
         gui.cursor_row, gui.cursor_col, GUI_MON_NOCLEAR)
  && gui.cursor_col > 0)
     (void)gui_redraw_block(gui.cursor_row, gui.cursor_col - 1,
    gui.cursor_row, gui.cursor_col - 1, GUI_MON_NOCLEAR);
 gui.cursor_is_valid = FALSE;
    }
}
