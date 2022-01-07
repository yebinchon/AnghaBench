
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int guicolor_T ;
struct TYPE_5__ {scalar_t__ char_height; int row; scalar_t__ col; } ;
struct TYPE_4__ {scalar_t__ top; scalar_t__ bottom; void* left; void* right; } ;
typedef TYPE_1__ Rect ;


 scalar_t__ CURSOR_BAR_RIGHT ;
 void* FILL_X (scalar_t__) ;
 scalar_t__ FILL_Y (int ) ;
 int FrameRect (TYPE_1__*) ;
 TYPE_2__ gui ;
 int gui_mch_set_fg_color (int ) ;

void
gui_mch_draw_part_cursor(int w, int h, guicolor_T color)
{
    Rect rc;







 rc.left = FILL_X(gui.col);
    rc.top = FILL_Y(gui.row) + gui.char_height - h;
    rc.right = rc.left + w;
    rc.bottom = rc.top + h;

    gui_mch_set_fg_color(color);

    FrameRect(&rc);

}
