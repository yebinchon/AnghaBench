
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; } ;
typedef TYPE_1__ widget ;
typedef int WidgetType ;



void widget_set_type ( widget *widget, WidgetType type )
{
    if ( widget == ((void*)0) ) {
        return ;
    }
    widget->type = type;
}
