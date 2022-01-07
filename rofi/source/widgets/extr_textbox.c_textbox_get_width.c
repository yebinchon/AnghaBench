
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int widget ;
struct TYPE_4__ {int w; } ;
struct TYPE_5__ {int flags; TYPE_1__ widget; } ;
typedef TYPE_2__ textbox ;


 unsigned int DOT_OFFSET ;
 int TB_AUTOWIDTH ;
 int TB_INDICATOR ;
 int textbox_get_font_width (TYPE_2__*) ;
 int widget_padding_get_padding_width (int *) ;

int textbox_get_width ( widget *wid )
{
    textbox *tb = (textbox *) wid;
    if ( tb->flags & TB_AUTOWIDTH ) {
        unsigned int offset = ( tb->flags & TB_INDICATOR ) ? DOT_OFFSET : 0;
        return textbox_get_font_width ( tb ) + widget_padding_get_padding_width ( wid ) + offset;
    }
    return tb->widget.w;
}
