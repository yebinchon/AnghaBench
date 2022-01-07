
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* wp; TYPE_1__* id; } ;
typedef TYPE_3__ scrollbar_T ;
typedef scalar_t__ gpointer ;
struct TYPE_11__ {scalar_t__ value; } ;
struct TYPE_9__ {int w_topline; } ;
struct TYPE_8__ {int window; } ;
typedef TYPE_4__ GtkAdjustment ;
typedef int GdkModifierType ;


 int FALSE ;
 int TRUE ;
 int gdk_window_get_pointer (int ,int*,int*,int *) ;
 int gdk_window_get_size (int ,int*,int*) ;
 int gui_drag_scrollbar (TYPE_3__*,long,int) ;
 TYPE_3__* gui_find_scrollbar (long) ;
 scalar_t__ im_is_preediting () ;
 int xim_reset () ;

__attribute__((used)) static void
adjustment_value_changed(GtkAdjustment *adjustment, gpointer data)
{
    scrollbar_T *sb;
    long value;
    int dragging = FALSE;







    sb = gui_find_scrollbar((long)data);
    value = (long)adjustment->value;
    if (sb != ((void*)0))
    {
 dragging = TRUE;

 if (sb->wp != ((void*)0))
 {
     int x;
     int y;
     GdkModifierType state;
     int width;
     int height;



     gdk_window_get_pointer(sb->id->window, &x, &y, &state);
     gdk_window_get_size(sb->id->window, &width, &height);
     if (x >= 0 && x < width && y >= 0 && y < height)
     {
  if (y < width)
  {

      dragging = FALSE;
      value = sb->wp->w_topline - 2;
  }
  else if (y > height - width)
  {

      dragging = FALSE;
      value = sb->wp->w_topline;
  }
     }
 }
    }

    gui_drag_scrollbar(sb, value, dragging);
}
