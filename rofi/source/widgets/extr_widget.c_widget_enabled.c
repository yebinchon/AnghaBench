
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int enabled; } ;
typedef TYPE_1__ widget ;
typedef int gboolean ;


 int FALSE ;

gboolean widget_enabled ( widget *widget )
{
    if ( widget != ((void*)0) ) {
        return widget->enabled;
    }
    return FALSE;
}
