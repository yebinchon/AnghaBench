
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ is_floating; } ;
struct TYPE_13__ {int height; int width; } ;
struct TYPE_14__ {TYPE_1__ allocation; } ;
typedef TYPE_2__ GtkWidget ;
typedef scalar_t__ GtkOrientation ;
typedef TYPE_3__ BonoboDockItem ;


 TYPE_3__* BONOBO_DOCK_ITEM (TYPE_2__*) ;
 scalar_t__ BONOBO_TYPE_DOCK_ITEM ;
 scalar_t__ GTK_ORIENTATION_HORIZONTAL ;
 scalar_t__ GTK_WIDGET_REALIZED (TYPE_2__*) ;
 scalar_t__ GTK_WIDGET_VISIBLE (TYPE_2__*) ;
 scalar_t__ G_TYPE_FROM_INSTANCE (TYPE_2__*) ;
 scalar_t__ bonobo_dock_item_get_orientation (TYPE_3__*) ;
 TYPE_2__* gtk_widget_get_parent (TYPE_2__*) ;
 scalar_t__ using_gnome ;

__attribute__((used)) static int
get_item_dimensions(GtkWidget *widget, GtkOrientation orientation)
{
    GtkOrientation item_orientation = GTK_ORIENTATION_HORIZONTAL;
    if (widget != ((void*)0)
     && item_orientation == orientation
     && GTK_WIDGET_REALIZED(widget)
     && GTK_WIDGET_VISIBLE(widget))
    {
 if (orientation == GTK_ORIENTATION_HORIZONTAL)
     return widget->allocation.height;
 else
     return widget->allocation.width;
    }
    return 0;
}
