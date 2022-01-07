
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; int emode; int layout; } ;
typedef TYPE_1__ textbox ;
typedef int PangoEllipsizeMode ;


 int TB_WRAP ;
 int WIDGET (TYPE_1__*) ;
 int pango_layout_set_ellipsize (int ,int ) ;
 int widget_queue_redraw (int ) ;

void textbox_set_ellipsize ( textbox *tb, PangoEllipsizeMode mode )
{
    if ( tb )
    {
        tb->emode = mode;
        if ( ( tb->flags & TB_WRAP ) != TB_WRAP ) {

            pango_layout_set_ellipsize ( tb->layout, tb->emode );
            widget_queue_redraw ( WIDGET ( tb ) );
        }
    }
}
