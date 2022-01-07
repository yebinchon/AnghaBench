
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int extension_widget_t ;
struct TYPE_3__ {int widgets; } ;
typedef TYPE_1__ extension_dialog_t ;


 int ARRAY_APPEND (int ,int *) ;

__attribute__((used)) static void AddWidget( extension_dialog_t *p_dialog,
                       extension_widget_t *p_widget )
{
    ARRAY_APPEND( p_dialog->widgets, p_widget );
}
