
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {TYPE_2__* data; struct TYPE_13__* next; } ;
struct TYPE_12__ {TYPE_4__* children; int bin_window; } ;
struct TYPE_11__ {int widget; } ;
struct TYPE_10__ {int window; } ;
typedef TYPE_1__ GtkWidget ;
typedef TYPE_2__ GtkFormChild ;
typedef TYPE_3__ GtkForm ;
typedef TYPE_4__ GList ;


 TYPE_3__* GTK_FORM (TYPE_1__*) ;
 int GTK_IS_FORM (TYPE_1__*) ;
 int GTK_MAPPED ;
 int GTK_WIDGET_MAPPED (int ) ;
 int GTK_WIDGET_SET_FLAGS (TYPE_1__*,int ) ;
 scalar_t__ GTK_WIDGET_VISIBLE (int ) ;
 int g_return_if_fail (int ) ;
 int gdk_window_show (int ) ;
 int gtk_widget_map (int ) ;

__attribute__((used)) static void
gtk_form_map(GtkWidget *widget)
{
    GList *tmp_list;
    GtkForm *form;

    g_return_if_fail(GTK_IS_FORM(widget));

    form = GTK_FORM(widget);

    GTK_WIDGET_SET_FLAGS(widget, GTK_MAPPED);

    gdk_window_show(widget->window);
    gdk_window_show(form->bin_window);

    for (tmp_list = form->children; tmp_list; tmp_list = tmp_list->next)
    {
 GtkFormChild *child = tmp_list->data;

 if (GTK_WIDGET_VISIBLE(child->widget)
  && !GTK_WIDGET_MAPPED(child->widget))
     gtk_widget_map(child->widget);
    }
}
