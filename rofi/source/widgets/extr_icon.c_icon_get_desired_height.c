
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int widget ;
struct TYPE_2__ {int size; } ;
typedef TYPE_1__ icon ;


 scalar_t__ widget_padding_get_padding_height (int *) ;

__attribute__((used)) static int icon_get_desired_height ( widget *widget )
{
    icon *b = (icon *) widget;
    int height = b->size;
    height += widget_padding_get_padding_height ( widget );
    return height;
}
