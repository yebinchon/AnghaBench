
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * submenu_id; } ;
typedef TYPE_1__ vimmenu_T ;
typedef int guint32 ;
typedef int char_u ;


 scalar_t__ GDK_CURRENT_TIME ;
 int GTK_MENU (int *) ;
 int gtk_menu_popup (int ,int *,int *,int *,int *,unsigned int,int ) ;
 TYPE_1__* gui_find_menu (int *) ;
 int popup_menu_position_func ;
 int popup_mouse_pos ;

void
gui_make_popup(char_u *path_name, int mouse_pos)
{
    vimmenu_T *menu;

    popup_mouse_pos = mouse_pos;

    menu = gui_find_menu(path_name);

    if (menu != ((void*)0) && menu->submenu_id != ((void*)0))
    {
 gtk_menu_popup(GTK_MENU(menu->submenu_id),
         ((void*)0), ((void*)0),
         &popup_menu_position_func, ((void*)0),
         0U, (guint32)GDK_CURRENT_TIME);
    }
}
