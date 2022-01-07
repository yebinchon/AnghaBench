
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int guicolor_T ;
struct TYPE_4__ {scalar_t__ char_height; int row; scalar_t__ col; int text_gc; TYPE_1__* drawarea; int fgcolor; } ;
struct TYPE_3__ {int * window; } ;


 scalar_t__ CURSOR_BAR_RIGHT ;
 scalar_t__ FILL_X (scalar_t__) ;
 scalar_t__ FILL_Y (int ) ;
 int TRUE ;
 int gdk_draw_rectangle (int *,int ,int ,scalar_t__,scalar_t__,int,int) ;
 int gdk_gc_set_foreground (int ,int ) ;
 TYPE_2__ gui ;
 int gui_mch_set_fg_color (int ) ;

void
gui_mch_draw_part_cursor(int w, int h, guicolor_T color)
{
    if (gui.drawarea->window == ((void*)0))
 return;

    gui_mch_set_fg_color(color);

    gdk_gc_set_foreground(gui.text_gc, gui.fgcolor);
    gdk_draw_rectangle(gui.drawarea->window, gui.text_gc,
     TRUE,




     FILL_X(gui.col),
     FILL_Y(gui.row) + gui.char_height - h,
     w, h);
}
