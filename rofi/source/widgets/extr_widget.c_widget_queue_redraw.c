
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* need_redraw; struct TYPE_3__* parent; } ;
typedef TYPE_1__ widget ;


 void* TRUE ;

void widget_queue_redraw ( widget *wid )
{
    if ( wid ) {
        widget *iter = wid;

        while ( iter->parent != ((void*)0) ) {
            iter->need_redraw = TRUE;
            iter = iter->parent;
        }
        iter->need_redraw = TRUE;
    }
}
