
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int gint ;
struct TYPE_19__ {TYPE_2__* data; struct TYPE_19__* next; } ;
struct TYPE_18__ {scalar_t__ window; int area; int region; } ;
struct TYPE_17__ {scalar_t__ bin_window; TYPE_5__* children; } ;
struct TYPE_16__ {TYPE_1__* widget; } ;
struct TYPE_15__ {scalar_t__ window; } ;
typedef TYPE_1__ GtkWidget ;
typedef TYPE_2__ GtkFormChild ;
typedef TYPE_3__ GtkForm ;
typedef TYPE_4__ GdkEventExpose ;
typedef int GdkEvent ;
typedef TYPE_5__ GList ;


 int FALSE ;
 TYPE_3__* GTK_FORM (TYPE_1__*) ;
 int GTK_IS_FORM (TYPE_1__*) ;
 scalar_t__ GTK_WIDGET_DRAWABLE (TYPE_1__*) ;
 scalar_t__ GTK_WIDGET_NO_WINDOW (TYPE_1__*) ;
 int g_return_val_if_fail (int ,int ) ;
 int gdk_region_empty (int ) ;
 int gdk_region_get_clipbox (int ,int *) ;
 int gtk_widget_region_intersect (TYPE_1__*,int ) ;
 int gtk_widget_send_expose (TYPE_1__*,int *) ;

__attribute__((used)) static gint
gtk_form_expose(GtkWidget *widget, GdkEventExpose *event)
{
    GList *tmp_list;
    GtkForm *form;

    g_return_val_if_fail(GTK_IS_FORM(widget), FALSE);

    form = GTK_FORM(widget);

    if (event->window == form->bin_window)
 return FALSE;

    for (tmp_list = form->children; tmp_list; tmp_list = tmp_list->next)
    {
 GtkFormChild *formchild = tmp_list->data;
 GtkWidget *child = formchild->widget;





 if (GTK_WIDGET_DRAWABLE(child) && GTK_WIDGET_NO_WINDOW(child)
  && child->window == event->window)
 {
     GdkEventExpose child_event;
     child_event = *event;

     child_event.region = gtk_widget_region_intersect(child, event->region);
     if (!gdk_region_empty(child_event.region))
     {
  gdk_region_get_clipbox(child_event.region, &child_event.area);
  gtk_widget_send_expose(child, (GdkEvent *)&child_event);
     }
 }
    }

    return FALSE;
}
