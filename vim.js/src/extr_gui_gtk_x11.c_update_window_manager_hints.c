
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int char_height; int char_width; int mainwin; } ;
struct TYPE_4__ {int width_inc; int height_inc; int base_width; int base_height; int min_width; int min_height; } ;
typedef int GdkWindowHints ;
typedef TYPE_1__ GdkGeometry ;


 int GDK_HINT_BASE_SIZE ;
 int GDK_HINT_MIN_SIZE ;
 int GDK_HINT_RESIZE_INC ;
 int GTK_WINDOW (int ) ;
 int MIN_COLUMNS ;
 int MIN_LINES ;
 scalar_t__ get_menu_tool_height () ;
 scalar_t__ get_menu_tool_width () ;
 int gtk_window_set_geometry_hints (int ,int ,TYPE_1__*,int) ;
 TYPE_2__ gui ;
 int gui_get_base_height () ;
 int gui_get_base_width () ;
 int init_window_hints_state ;
 int tabline_height () ;

__attribute__((used)) static void
update_window_manager_hints(int force_width, int force_height)
{
    static int old_width = 0;
    static int old_height = 0;
    static int old_min_width = 0;
    static int old_min_height = 0;
    static int old_char_width = 0;
    static int old_char_height = 0;

    int width;
    int height;
    int min_width;
    int min_height;





    if (!(force_width && force_height) && init_window_hints_state > 0)
    {

 init_window_hints_state = 2;
 return;
    }



    width = gui_get_base_width();
    height = gui_get_base_height();



    width += get_menu_tool_width();
    height += get_menu_tool_height();







    if (force_width && force_height)
    {
 min_width = force_width;
 min_height = force_height;
    }
    else
    {
 min_width = width + MIN_COLUMNS * gui.char_width;
 min_height = height + MIN_LINES * gui.char_height;
    }


    if (width != old_width
     || height != old_height
     || min_width != old_min_width
     || min_height != old_min_height
     || gui.char_width != old_char_width
     || gui.char_height != old_char_height)
    {
 GdkGeometry geometry;
 GdkWindowHints geometry_mask;

 geometry.width_inc = gui.char_width;
 geometry.height_inc = gui.char_height;
 geometry.base_width = width;
 geometry.base_height = height;
 geometry.min_width = min_width;
 geometry.min_height = min_height;
 geometry_mask = GDK_HINT_BASE_SIZE|GDK_HINT_RESIZE_INC
          |GDK_HINT_MIN_SIZE;



 gtk_window_set_geometry_hints(GTK_WINDOW(gui.mainwin), gui.mainwin,
          &geometry, geometry_mask);
 old_width = width;
 old_height = height;
 old_min_width = min_width;
 old_min_height = min_height;
 old_char_width = gui.char_width;
 old_char_height = gui.char_height;
    }
}
