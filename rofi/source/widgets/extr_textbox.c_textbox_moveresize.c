
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int x; int y; int w; int h; } ;
struct TYPE_8__ {int flags; TYPE_1__ widget; int layout; int emode; } ;
typedef TYPE_2__ textbox ;


 unsigned int DOT_OFFSET ;
 void* MAX (int,int) ;
 int PANGO_ELLIPSIZE_MIDDLE ;
 int PANGO_ELLIPSIZE_NONE ;
 int PANGO_SCALE ;
 int TB_AUTOHEIGHT ;
 int TB_AUTOWIDTH ;
 int TB_EDITABLE ;
 int TB_INDICATOR ;
 int TB_WRAP ;
 int WIDGET (TYPE_2__*) ;
 int pango_layout_set_ellipsize (int ,int ) ;
 int pango_layout_set_width (int ,int) ;
 unsigned int textbox_get_font_width (TYPE_2__*) ;
 int textbox_get_height (TYPE_2__*) ;
 int widget_padding_get_padding_width (int ) ;
 int widget_queue_redraw (int ) ;

void textbox_moveresize ( textbox *tb, int x, int y, int w, int h )
{
    unsigned int offset = ( ( tb->flags & TB_INDICATOR ) ? DOT_OFFSET : 0 );
    if ( tb->flags & TB_AUTOWIDTH ) {
        pango_layout_set_width ( tb->layout, -1 );
        w = textbox_get_font_width ( tb ) + widget_padding_get_padding_width ( WIDGET ( tb ) ) + offset;
    }
    else {

        if ( ( tb->flags & TB_EDITABLE ) == TB_EDITABLE ) {
            pango_layout_set_ellipsize ( tb->layout, PANGO_ELLIPSIZE_MIDDLE );
        }
        else if ( ( tb->flags & TB_WRAP ) != TB_WRAP ) {
            pango_layout_set_ellipsize ( tb->layout, tb->emode );
        } else {
            pango_layout_set_ellipsize ( tb->layout, PANGO_ELLIPSIZE_NONE );
        }
    }

    if ( tb->flags & TB_AUTOHEIGHT ) {

        int tw = MAX ( 1, w );
        pango_layout_set_width ( tb->layout, PANGO_SCALE * ( tw - widget_padding_get_padding_width ( WIDGET ( tb ) ) - offset ) );
        int hd = textbox_get_height ( tb );
        h = MAX ( hd, h );
    }

    if ( x != tb->widget.x || y != tb->widget.y || w != tb->widget.w || h != tb->widget.h ) {
        tb->widget.x = x;
        tb->widget.y = y;
        tb->widget.h = MAX ( 1, h );
        tb->widget.w = MAX ( 1, w );
    }


    pango_layout_set_width ( tb->layout, PANGO_SCALE * ( tb->widget.w - widget_padding_get_padding_width ( WIDGET ( tb ) ) - offset ) );
    widget_queue_redraw ( WIDGET ( tb ) );
}
