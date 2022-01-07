
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int * id; int * submenu_id; int name; int * strings; int dname; struct TYPE_8__* parent; } ;
typedef TYPE_1__ vimmenu_T ;
typedef int char_u ;
struct TYPE_9__ {int toolbar; } ;
typedef int GtkToolbar ;


 int * CONVERT_TO_UTF8 (int ) ;
 int CONVERT_TO_UTF8_FREE (int *) ;
 int FALSE ;
 int GTK_MENU (int *) ;
 int GTK_OBJECT (int *) ;
 int GTK_SIGNAL_FUNC (int ) ;
 int * GTK_TOOLBAR (int ) ;
 int G_CALLBACK (int *) ;
 size_t MENU_INDEX_TIP ;
 int create_menu_icon (TYPE_1__*,int ) ;
 int gtk_menu_insert (int ,int *,int) ;
 int * gtk_menu_item_new () ;
 int gtk_signal_connect (int ,char*,int ,TYPE_1__*) ;
 scalar_t__ gtk_socket_id ;
 int gtk_toolbar_get_icon_size (int *) ;
 int * gtk_toolbar_insert_item (int *,char const*,char const*,int *,int ,int ,TYPE_1__*,int) ;
 int gtk_toolbar_insert_space (int *,int) ;
 int gtk_widget_set_sensitive (int *,int ) ;
 int gtk_widget_show (int *) ;
 TYPE_4__ gui ;
 int menu_is_popup (int ) ;
 scalar_t__ menu_is_separator (int ) ;
 scalar_t__ menu_is_toolbar (int ) ;
 int menu_item_activate ;
 int menu_item_new (TYPE_1__*,int *) ;
 int toolbar_button_focus_in_event ;
 int utf_valid_string (int *,int *) ;

void
gui_mch_add_menu_item(vimmenu_T *menu, int idx)
{
    vimmenu_T *parent;

    parent = menu->parent;
    {

 if (parent == ((void*)0) || parent->submenu_id == ((void*)0))
     return;



 if (!menu_is_popup(parent->name))
     ++idx;

 if (menu_is_separator(menu->name))
 {

     menu->id = gtk_menu_item_new();
     gtk_widget_set_sensitive(menu->id, FALSE);
     gtk_widget_show(menu->id);
     gtk_menu_insert(GTK_MENU(parent->submenu_id), menu->id, idx);

     return;
 }


 menu_item_new(menu, parent->submenu_id);
 gtk_widget_show(menu->id);
 gtk_menu_insert(GTK_MENU(parent->submenu_id), menu->id, idx);

 if (menu->id != ((void*)0))
     gtk_signal_connect(GTK_OBJECT(menu->id), "activate",
          GTK_SIGNAL_FUNC(menu_item_activate), menu);
    }
}
