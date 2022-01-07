
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* get_desired_width ) (TYPE_1__*) ;int w; } ;
typedef TYPE_1__ widget ;


 int stub1 (TYPE_1__*) ;

int widget_get_desired_width ( widget *wid )
{
    if ( wid == ((void*)0) ) {
        return 0;
    }
    if ( wid->get_desired_width ) {
        return wid->get_desired_width ( wid );
    }
    return wid->w;
}
