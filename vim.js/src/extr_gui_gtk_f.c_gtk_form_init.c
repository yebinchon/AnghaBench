
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int width; int height; scalar_t__ freeze_count; int visibility; scalar_t__ configure_serial; int * bin_window; int * children; } ;
typedef TYPE_1__ GtkForm ;


 int GDK_VISIBILITY_PARTIAL ;

__attribute__((used)) static void
gtk_form_init(GtkForm *form)
{
    form->children = ((void*)0);

    form->width = 1;
    form->height = 1;

    form->bin_window = ((void*)0);

    form->configure_serial = 0;
    form->visibility = GDK_VISIBILITY_PARTIAL;

    form->freeze_count = 0;
}
