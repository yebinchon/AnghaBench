
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int char_width; int char_height; } ;
struct TYPE_4__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; } ;
typedef TYPE_1__ RECT ;


 scalar_t__ FILL_X (int) ;
 scalar_t__ FILL_Y (int) ;
 int InvertRect (int ,TYPE_1__*) ;
 TYPE_2__ gui ;
 int s_hdc ;

void
gui_mch_invert_rectangle(
    int r,
    int c,
    int nr,
    int nc)
{
    RECT rc;




    rc.left = FILL_X(c);
    rc.top = FILL_Y(r);
    rc.right = rc.left + nc * gui.char_width;
    rc.bottom = rc.top + nr * gui.char_height;
    InvertRect(s_hdc, &rc);
}
