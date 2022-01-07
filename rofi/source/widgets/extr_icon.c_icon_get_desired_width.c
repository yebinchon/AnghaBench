
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int widget ;
struct TYPE_2__ {int size; } ;
typedef TYPE_1__ icon ;


 scalar_t__ widget_padding_get_padding_width (int *) ;

__attribute__((used)) static int icon_get_desired_width ( widget *widget )
{
    icon *b = (icon *) widget;
    int width = b->size;
    width += widget_padding_get_padding_width ( widget );
    return width;
}
