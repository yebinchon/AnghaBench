
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int guicolor_T ;
struct TYPE_5__ {scalar_t__ char_height; scalar_t__ char_width; int col; int row; } ;
struct TYPE_4__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ right; scalar_t__ left; } ;
typedef TYPE_1__ RECT ;
typedef int HBRUSH ;


 int CreateSolidBrush (int ) ;
 int DeleteBrush (int ) ;
 scalar_t__ FILL_X (int ) ;
 scalar_t__ FILL_Y (int ) ;
 int FrameRect (int ,TYPE_1__*,int ) ;
 TYPE_2__ gui ;
 scalar_t__ mb_lefthalve (int ,int ) ;
 int s_hdc ;

void
gui_mch_draw_hollow_cursor(guicolor_T color)
{
    HBRUSH hbr;
    RECT rc;




    rc.left = FILL_X(gui.col);
    rc.top = FILL_Y(gui.row);
    rc.right = rc.left + gui.char_width;




    rc.bottom = rc.top + gui.char_height;
    hbr = CreateSolidBrush(color);
    FrameRect(s_hdc, &rc, hbr);
    DeleteBrush(hbr);
}
