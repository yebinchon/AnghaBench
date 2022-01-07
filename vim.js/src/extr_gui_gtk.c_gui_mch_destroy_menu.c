
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * id; int * submenu_id; int name; TYPE_1__* parent; } ;
typedef TYPE_2__ vimmenu_T ;
struct TYPE_8__ {int toolbar; int * menubar; } ;
struct TYPE_6__ {int name; } ;


 int GTK_CONTAINER (int *) ;
 int GTK_TOOLBAR (int ) ;
 int g_object_ref (int *) ;
 int g_object_unref (int *) ;
 int get_menu_position (TYPE_2__*) ;
 int gtk_container_remove (int ,int *) ;
 int gtk_toolbar_remove_space (int ,int ) ;
 int gtk_widget_destroy (int *) ;
 int * gtk_widget_get_parent (int *) ;
 TYPE_4__ gui ;
 scalar_t__ menu_is_separator (int ) ;
 scalar_t__ menu_is_toolbar (int ) ;

void
gui_mch_destroy_menu(vimmenu_T *menu)
{

    if (menu->id != ((void*)0))
 g_object_ref(menu->id);




    if (menu->id != ((void*)0) && gui.menubar != ((void*)0)
       && gtk_widget_get_parent(menu->id) == gui.menubar)
 gtk_container_remove(GTK_CONTAINER(gui.menubar), menu->id);
    {
 if (menu->submenu_id != ((void*)0))
     gtk_widget_destroy(menu->submenu_id);

 if (menu->id != ((void*)0))
     gtk_widget_destroy(menu->id);
    }

    if (menu->id != ((void*)0))
 g_object_unref(menu->id);
    menu->submenu_id = ((void*)0);
    menu->id = ((void*)0);
}
