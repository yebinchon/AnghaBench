
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int back_pixel; int vimTextArea; } ;


 int PgBlueValue (int ) ;
 int PgGreenValue (int ) ;
 int PgRGB (short,short,short) ;
 int PgRedValue (int ) ;
 int PtSetResource (int ,int ,int ,int ) ;
 int Pt_ARG_CURSOR_COLOR ;
 int Pt_ARG_FILL_COLOR ;
 int abs (short) ;
 TYPE_1__ gui ;
 short gui_get_lightness (int ) ;
 int gui_ph_mouse_color ;

void
gui_mch_new_colors(void)
{
    PtSetResource(gui.vimTextArea, Pt_ARG_FILL_COLOR, gui.back_pixel, 0);
}
