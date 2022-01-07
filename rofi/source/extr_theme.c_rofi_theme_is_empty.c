
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int gboolean ;
struct TYPE_2__ {scalar_t__ num_widgets; int * properties; } ;


 int FALSE ;
 int TRUE ;
 TYPE_1__* rofi_theme ;

gboolean rofi_theme_is_empty ( void )
{
    if ( rofi_theme == ((void*)0) ) {
        return TRUE;
    }
    if ( rofi_theme->properties == ((void*)0) && rofi_theme->num_widgets == 0 ) {
        return TRUE;
    }

    return FALSE;
}
