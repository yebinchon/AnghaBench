
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int guicolor_T ;
struct TYPE_4__ {int char_width; scalar_t__ char_height; int row; int col; int text_gc; TYPE_1__* drawarea; int fgcolor; } ;
struct TYPE_3__ {int * window; } ;


 int FALSE ;
 int FILL_X (int ) ;
 int FILL_Y (int ) ;
 int gdk_draw_rectangle (int *,int ,int ,int ,int ,int,scalar_t__) ;
 int gdk_gc_set_foreground (int ,int ) ;
 TYPE_2__ gui ;
 int gui_mch_set_fg_color (int ) ;
 scalar_t__ mb_lefthalve (int ,int ) ;

void
gui_mch_draw_hollow_cursor(guicolor_T color)
{
    int i = 1;

    if (gui.drawarea->window == ((void*)0))
 return;

    gui_mch_set_fg_color(color);

    gdk_gc_set_foreground(gui.text_gc, gui.fgcolor);
    if (mb_lefthalve(gui.row, gui.col))
 i = 2;
    gdk_draw_rectangle(gui.drawarea->window, gui.text_gc,
     FALSE,
     FILL_X(gui.col), FILL_Y(gui.row),
     i * gui.char_width - 1, gui.char_height - 1);
}
