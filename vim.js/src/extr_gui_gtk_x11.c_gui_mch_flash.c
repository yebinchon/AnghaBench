
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {int norm_pixel; int back_pixel; scalar_t__ visibility; scalar_t__ border_offset; TYPE_3__* drawarea; } ;
struct TYPE_8__ {int pixel; } ;
struct TYPE_7__ {int pixel; } ;
struct TYPE_10__ {int function; TYPE_2__ background; TYPE_1__ foreground; } ;
struct TYPE_9__ {int * window; } ;
typedef TYPE_4__ GdkGCValues ;
typedef int GdkGC ;


 scalar_t__ Columns ;
 scalar_t__ FILL_X (int) ;
 scalar_t__ FILL_Y (int) ;
 int GDK_GC_BACKGROUND ;
 int GDK_GC_FOREGROUND ;
 int GDK_GC_FUNCTION ;
 scalar_t__ GDK_VISIBILITY_UNOBSCURED ;
 int GDK_XOR ;
 scalar_t__ Rows ;
 int TRUE ;
 int gdk_draw_rectangle (int *,int *,int ,int ,int ,scalar_t__,scalar_t__) ;
 int gdk_gc_destroy (int *) ;
 int * gdk_gc_new_with_values (int *,TYPE_4__*,int) ;
 int gdk_gc_set_exposures (int *,int) ;
 TYPE_5__ gui ;
 int gui_mch_flush () ;
 int ui_delay (long,int ) ;

void
gui_mch_flash(int msec)
{
    GdkGCValues values;
    GdkGC *invert_gc;

    if (gui.drawarea->window == ((void*)0))
 return;

    values.foreground.pixel = gui.norm_pixel ^ gui.back_pixel;
    values.background.pixel = gui.norm_pixel ^ gui.back_pixel;
    values.function = GDK_XOR;
    invert_gc = gdk_gc_new_with_values(gui.drawarea->window,
           &values,
           GDK_GC_FOREGROUND |
           GDK_GC_BACKGROUND |
           GDK_GC_FUNCTION);
    gdk_gc_set_exposures(invert_gc,
    gui.visibility != GDK_VISIBILITY_UNOBSCURED);







    gdk_draw_rectangle(gui.drawarea->window, invert_gc,
         TRUE,
         0, 0,
         FILL_X((int)Columns) + gui.border_offset,
         FILL_Y((int)Rows) + gui.border_offset);

    gui_mch_flush();
    ui_delay((long)msec, TRUE);

    gdk_draw_rectangle(gui.drawarea->window, invert_gc,
         TRUE,
         0, 0,
         FILL_X((int)Columns) + gui.border_offset,
         FILL_Y((int)Rows) + gui.border_offset);

    gdk_gc_destroy(invert_gc);
}
