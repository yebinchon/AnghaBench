
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* get_desired_height ) (TYPE_1__*) ;int h; } ;
typedef TYPE_1__ widget ;


 int stub1 (TYPE_1__*) ;

int widget_get_desired_height ( widget *wid )
{
    if ( wid == ((void*)0) ) {
        return 0;
    }
    if ( wid->get_desired_height ) {
        return wid->get_desired_height ( wid );
    }
    return wid->h;
}
