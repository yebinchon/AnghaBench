
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int guicolor_T ;
struct TYPE_5__ {scalar_t__ char_height; scalar_t__ char_width; int col; int row; } ;
struct TYPE_4__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ right; scalar_t__ left; } ;
typedef TYPE_1__ Rect ;


 scalar_t__ FILL_X (int ) ;
 scalar_t__ FILL_Y (int ) ;
 int FrameRect (TYPE_1__*) ;
 TYPE_2__ gui ;
 int gui_mch_set_fg_color (int ) ;
 scalar_t__ mb_lefthalve (int ,int ) ;

void
gui_mch_draw_hollow_cursor(guicolor_T color)
{
    Rect rc;




    rc.left = FILL_X(gui.col);
    rc.top = FILL_Y(gui.row);
    rc.right = rc.left + gui.char_width;




    rc.bottom = rc.top + gui.char_height;

    gui_mch_set_fg_color(color);

    FrameRect(&rc);
}
