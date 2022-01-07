
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int freeze_count; } ;
typedef TYPE_1__ GtkForm ;


 int GTK_IS_FORM (TYPE_1__*) ;
 int g_return_if_fail (int ) ;

void
gtk_form_freeze(GtkForm *form)
{
    g_return_if_fail(GTK_IS_FORM(form));

    ++form->freeze_count;
}
