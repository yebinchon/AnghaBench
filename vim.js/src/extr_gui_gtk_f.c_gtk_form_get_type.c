
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int form_info ;
struct TYPE_4__ {char* type_name; int object_size; int class_size; scalar_t__ object_init_func; scalar_t__ class_init_func; } ;
typedef TYPE_1__ GtkTypeInfo ;
typedef scalar_t__ GtkType ;
typedef scalar_t__ GtkObjectInitFunc ;
typedef int GtkFormClass ;
typedef int GtkForm ;
typedef scalar_t__ GtkClassInitFunc ;


 int GTK_TYPE_CONTAINER ;
 scalar_t__ gtk_form_class_init ;
 scalar_t__ gtk_form_init ;
 scalar_t__ gtk_type_unique (int ,TYPE_1__*) ;
 int vim_memset (TYPE_1__*,int ,int) ;

GtkType
gtk_form_get_type(void)
{
    static GtkType form_type = 0;

    if (!form_type)
    {
 GtkTypeInfo form_info;

 vim_memset(&form_info, 0, sizeof(form_info));
 form_info.type_name = "GtkForm";
 form_info.object_size = sizeof(GtkForm);
 form_info.class_size = sizeof(GtkFormClass);
 form_info.class_init_func = (GtkClassInitFunc)gtk_form_class_init;
 form_info.object_init_func = (GtkObjectInitFunc)gtk_form_init;

 form_type = gtk_type_unique(GTK_TYPE_CONTAINER, &form_info);
    }
    return form_type;
}
