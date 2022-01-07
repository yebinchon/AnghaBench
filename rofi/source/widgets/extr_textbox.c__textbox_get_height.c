
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int widget ;
struct TYPE_4__ {int h; } ;
struct TYPE_5__ {int flags; TYPE_1__ widget; } ;
typedef TYPE_2__ textbox ;


 int TB_AUTOHEIGHT ;
 int textbox_get_height (TYPE_2__*) ;

int _textbox_get_height ( widget *wid )
{
    textbox *tb = (textbox *) wid;
    if ( tb->flags & TB_AUTOHEIGHT ) {
        return textbox_get_height ( tb );
    }
    return tb->widget.h;
}
