
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * mainwin; } ;
typedef int GdkDisplay ;


 scalar_t__ GTK_WIDGET_REALIZED (int *) ;
 int gdk_beep () ;
 int gdk_display_beep (int *) ;
 int * gdk_display_get_default () ;
 int * gtk_widget_get_display (int *) ;
 TYPE_1__ gui ;

void
gui_mch_beep(void)
{
    gdk_beep();

}
