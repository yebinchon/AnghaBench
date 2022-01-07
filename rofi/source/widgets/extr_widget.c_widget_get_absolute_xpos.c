
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* parent; scalar_t__ x; } ;
typedef TYPE_1__ widget ;



int widget_get_absolute_xpos ( widget *wid )
{
    int retv = 0;
    if ( wid ) {
        retv += wid->x;
        if ( wid->parent ) {
            retv += widget_get_absolute_xpos ( wid->parent );
        }
    }
    return retv;
}
