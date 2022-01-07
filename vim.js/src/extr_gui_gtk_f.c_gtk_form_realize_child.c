
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int window; } ;
struct TYPE_5__ {TYPE_2__* widget; int * window; } ;
typedef TYPE_1__ GtkFormChild ;
typedef int GtkForm ;


 int TRUE ;
 int gtk_form_attach_child_window (int *,TYPE_1__*) ;
 int gtk_form_set_static_gravity (int ,int ) ;
 int gtk_widget_realize (TYPE_2__*) ;

__attribute__((used)) static void
gtk_form_realize_child(GtkForm *form, GtkFormChild *child)
{
    gtk_form_attach_child_window(form, child);
    gtk_widget_realize(child->widget);

    if (child->window == ((void*)0))
 gtk_form_set_static_gravity(child->widget->window, TRUE);
}
