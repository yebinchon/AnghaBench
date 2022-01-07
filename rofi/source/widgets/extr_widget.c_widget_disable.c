
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* parent; scalar_t__ enabled; } ;
typedef TYPE_1__ widget ;


 scalar_t__ FALSE ;
 int widget_queue_redraw (TYPE_1__*) ;
 int widget_update (TYPE_1__*) ;

void widget_disable ( widget *widget )
{
    if ( widget && widget->enabled ) {
        widget->enabled = FALSE;
        widget_update ( widget );
        widget_update ( widget->parent );
        widget_queue_redraw ( widget );
    }
}
