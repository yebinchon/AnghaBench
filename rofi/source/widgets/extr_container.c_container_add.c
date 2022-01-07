
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ parent; } ;
typedef TYPE_1__ widget ;
struct TYPE_7__ {TYPE_1__* child; } ;
typedef TYPE_2__ container ;


 scalar_t__ WIDGET (TYPE_2__*) ;
 int g_assert (int) ;
 int widget_update (scalar_t__) ;

void container_add ( container *container, widget *child )
{
    if ( container == ((void*)0) ) {
        return;
    }
    container->child = child;
    g_assert ( child->parent == WIDGET ( container ) );
    widget_update ( WIDGET ( container ) );
}
