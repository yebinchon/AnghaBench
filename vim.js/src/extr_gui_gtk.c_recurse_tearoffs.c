
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; struct TYPE_3__* children; int * tearoff_handle; int * submenu_id; struct TYPE_3__* next; } ;
typedef TYPE_1__ vimmenu_T ;


 int gtk_widget_hide (int *) ;
 int gtk_widget_show (int *) ;
 int menu_is_popup (char*) ;

__attribute__((used)) static void
recurse_tearoffs(vimmenu_T *menu, int val)
{
    for (; menu != ((void*)0); menu = menu->next)
    {
 if (menu->submenu_id != ((void*)0) && menu->tearoff_handle != ((void*)0)
  && menu->name[0] != ']' && !menu_is_popup(menu->name))
 {
     if (val)
  gtk_widget_show(menu->tearoff_handle);
     else
  gtk_widget_hide(menu->tearoff_handle);
 }
 recurse_tearoffs(menu->children, val);
    }
}
