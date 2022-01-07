
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ type; TYPE_1__* (* find_mouse_target ) (TYPE_1__*,scalar_t__,int ,int ) ;} ;
typedef TYPE_1__ widget ;
typedef int gint ;
typedef scalar_t__ WidgetType ;


 TYPE_1__* stub1 (TYPE_1__*,scalar_t__,int ,int ) ;

widget *widget_find_mouse_target ( widget *wid, WidgetType type, gint x, gint y )
{
    if ( !wid ) {
        return ((void*)0);
    }

    if ( wid->find_mouse_target ) {
        widget *target = wid->find_mouse_target ( wid, type, x, y );
        if ( target != ((void*)0) ) {
            return target;
        }
    }
    if ( wid->type == type ) {
        return wid;
    }
    return ((void*)0);
}
