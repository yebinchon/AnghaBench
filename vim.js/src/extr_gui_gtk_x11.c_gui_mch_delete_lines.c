
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ visibility; int scroll_region_left; int char_width; int scroll_region_right; int char_height; int scroll_region_bot; TYPE_1__* drawarea; int text_gc; int bgcolor; int fgcolor; } ;
struct TYPE_3__ {int window; } ;


 int FILL_X (int) ;
 int FILL_Y (int) ;
 scalar_t__ GDK_VISIBILITY_FULLY_OBSCURED ;
 int check_copy_area () ;
 int gdk_gc_set_background (int ,int ) ;
 int gdk_gc_set_foreground (int ,int ) ;
 int gdk_window_copy_area (int ,int ,int ,int ,int ,int ,int ,int,int) ;
 TYPE_2__ gui ;
 int gui_clear_block (int,int,int,int) ;

void
gui_mch_delete_lines(int row, int num_lines)
{
    if (gui.visibility == GDK_VISIBILITY_FULLY_OBSCURED)
 return;

    gdk_gc_set_foreground(gui.text_gc, gui.fgcolor);
    gdk_gc_set_background(gui.text_gc, gui.bgcolor);


    gdk_window_copy_area(gui.drawarea->window, gui.text_gc,
     FILL_X(gui.scroll_region_left), FILL_Y(row),
     gui.drawarea->window,
     FILL_X(gui.scroll_region_left),
     FILL_Y(row + num_lines),
     gui.char_width * (gui.scroll_region_right
         - gui.scroll_region_left + 1) + 1,
     gui.char_height * (gui.scroll_region_bot - row - num_lines + 1));

    gui_clear_block(gui.scroll_region_bot - num_lines + 1,
             gui.scroll_region_left,
      gui.scroll_region_bot, gui.scroll_region_right);
    check_copy_area();
}
