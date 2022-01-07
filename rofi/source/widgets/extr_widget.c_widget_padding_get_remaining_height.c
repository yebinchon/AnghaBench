
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int h; } ;
typedef TYPE_1__ widget ;


 scalar_t__ widget_padding_get_bottom (TYPE_1__ const*) ;
 scalar_t__ widget_padding_get_top (TYPE_1__ const*) ;

int widget_padding_get_remaining_height ( const widget *wid )
{
    int height = wid->h;
    height -= widget_padding_get_top ( wid );
    height -= widget_padding_get_bottom ( wid );
    return height;
}
