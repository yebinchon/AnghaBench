
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ id; } ;
typedef TYPE_1__ vimmenu_T ;


 scalar_t__ GTK_WIDGET_VISIBLE (scalar_t__) ;
 int gtk_widget_hide (scalar_t__) ;
 int gtk_widget_show (scalar_t__) ;
 int gui_mch_update () ;

void
gui_mch_menu_hidden(vimmenu_T *menu, int hidden)
{
    if (menu->id == 0)
 return;

    if (hidden)
    {
 if (GTK_WIDGET_VISIBLE(menu->id))
 {
     gtk_widget_hide(menu->id);
     gui_mch_update();
 }
    }
    else
    {
 if (!GTK_WIDGET_VISIBLE(menu->id))
 {
     gtk_widget_show(menu->id);
     gui_mch_update();
 }
    }
}
