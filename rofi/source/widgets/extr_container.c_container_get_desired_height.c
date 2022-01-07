
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int widget ;
struct TYPE_2__ {scalar_t__ child; } ;
typedef TYPE_1__ container ;


 scalar_t__ widget_get_desired_height (scalar_t__) ;
 scalar_t__ widget_padding_get_padding_height (int *) ;

__attribute__((used)) static int container_get_desired_height ( widget *widget )
{
    container *b = (container *) widget;
    int height = 0;
    if ( b->child ) {
        height += widget_get_desired_height ( b->child );
    }
    height += widget_padding_get_padding_height ( widget );
    return height;
}
