
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int widget ;
struct TYPE_5__ {int h; } ;
struct TYPE_6__ {int flags; scalar_t__ changed; TYPE_1__ widget; } ;
typedef TYPE_2__ textbox ;


 int TB_AUTOHEIGHT ;
 int __textbox_update_pango_text (TYPE_2__*) ;
 int textbox_get_height (TYPE_2__*) ;

__attribute__((used)) static int textbox_get_desired_height ( widget *wid )
{
    textbox *tb = (textbox *) wid;
    if ( ( tb->flags & TB_AUTOHEIGHT ) == 0 ) {
        return tb->widget.h;
    }
    if ( tb->changed ) {
        __textbox_update_pango_text ( tb );
    }
    int height = textbox_get_height ( tb );
    return height;
}
