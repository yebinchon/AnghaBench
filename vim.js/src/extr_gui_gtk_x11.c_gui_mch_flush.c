
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* drawarea; int * mainwin; } ;
struct TYPE_3__ {int * window; } ;


 int FALSE ;
 scalar_t__ GTK_WIDGET_REALIZED (int *) ;
 int gdk_display_sync (int ) ;
 int gdk_flush () ;
 int gdk_window_process_updates (int *,int ) ;
 int gtk_widget_get_display (int *) ;
 TYPE_2__ gui ;

void
gui_mch_flush(void)
{




    gdk_flush();



    if (gui.drawarea != ((void*)0) && gui.drawarea->window != ((void*)0))
 gdk_window_process_updates(gui.drawarea->window, FALSE);
}
