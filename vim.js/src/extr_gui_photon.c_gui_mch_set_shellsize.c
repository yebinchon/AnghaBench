
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int vimWindow; } ;
struct TYPE_4__ {int member_0; int member_1; int h; int w; } ;
typedef TYPE_1__ PhDim_t ;


 int PtSetResource (int ,int ,TYPE_1__*,int ) ;
 int PtWidgetIsRealized (int ) ;
 int Pt_ARG_DIM ;
 int Pt_ARG_MINIMUM_DIM ;
 TYPE_2__ gui ;
 int gui_ph_resize_container () ;
 scalar_t__ pg_margin_bottom ;
 scalar_t__ pg_margin_left ;
 scalar_t__ pg_margin_right ;
 scalar_t__ pg_margin_top ;

void
gui_mch_set_shellsize(int width, int height,
 int min_width, int min_height, int base_width, int base_height,
 int direction)
{
    PhDim_t window_size = { width, height };
    PhDim_t min_size = { min_width, min_height };






    PtSetResource(gui.vimWindow, Pt_ARG_MINIMUM_DIM, &min_size, 0);
    PtSetResource(gui.vimWindow, Pt_ARG_DIM, &window_size, 0);

    if (! PtWidgetIsRealized(gui.vimWindow))
 gui_ph_resize_container();
}
