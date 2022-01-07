
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int starting; int * menubar; int * menubar_h; } ;
typedef int GtkWidget ;


 int GTK_WIDGET_VISIBLE (int *) ;
 int gtk_widget_hide (int *) ;
 int gtk_widget_show (int *) ;
 TYPE_1__ gui ;
 int update_window_manager_hints (int ,int ) ;
 scalar_t__ using_gnome ;

void
gui_mch_enable_menu(int showit)
{
    GtkWidget *widget;






 widget = gui.menubar;


    if (!showit != !GTK_WIDGET_VISIBLE(widget) && !gui.starting)
    {
 if (showit)
     gtk_widget_show(widget);
 else
     gtk_widget_hide(widget);

 update_window_manager_hints(0, 0);
    }
}
