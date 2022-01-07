
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int num_cols; int char_width; int num_rows; int char_height; } ;
struct TYPE_4__ {int right; int bottom; scalar_t__ top; scalar_t__ left; } ;
typedef TYPE_1__ Rect ;


 int InvertRect (TYPE_1__*) ;
 int TRUE ;
 TYPE_2__ gui ;
 int ui_delay (long,int ) ;

void
gui_mch_flash(int msec)
{

    Rect rc;




    rc.left = 0;
    rc.top = 0;
    rc.right = gui.num_cols * gui.char_width;
    rc.bottom = gui.num_rows * gui.char_height;
    InvertRect(&rc);

    ui_delay((long)msec, TRUE);

    InvertRect(&rc);
}
