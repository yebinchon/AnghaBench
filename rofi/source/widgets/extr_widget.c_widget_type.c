
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; } ;
typedef TYPE_1__ widget ;
typedef int WidgetType ;


 int WIDGET_TYPE_UNKNOWN ;

WidgetType widget_type ( widget *widget )
{
    if ( widget != ((void*)0) ) {
        return widget->type;
    }
    return WIDGET_TYPE_UNKNOWN;
}
