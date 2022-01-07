
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int w; } ;
typedef TYPE_1__ widget ;


 scalar_t__ widget_padding_get_left (TYPE_1__ const*) ;
 scalar_t__ widget_padding_get_right (TYPE_1__ const*) ;

int widget_padding_get_remaining_width ( const widget *wid )
{
    int width = wid->w;
    width -= widget_padding_get_left ( wid );
    width -= widget_padding_get_right ( wid );
    return width;
}
