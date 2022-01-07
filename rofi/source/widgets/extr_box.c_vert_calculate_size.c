
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ enabled; scalar_t__ expand; scalar_t__ h; } ;
typedef TYPE_2__ widget ;
struct TYPE_14__ {int h; } ;
struct TYPE_16__ {int max_size; int children; TYPE_1__ widget; int spacing; } ;
typedef TYPE_3__ box ;
struct TYPE_17__ {scalar_t__ data; } ;
typedef TYPE_4__ GList ;


 scalar_t__ FALSE ;
 int ROFI_ORIENTATION_VERTICAL ;
 scalar_t__ TRUE ;
 int WIDGET (TYPE_3__*) ;
 int distance_get_pixel (int ,int ) ;
 int g_debug (char*,int,int ) ;
 TYPE_4__* g_list_first (int ) ;
 TYPE_4__* g_list_next (TYPE_4__*) ;
 int widget_get_desired_height (TYPE_2__*) ;
 scalar_t__ widget_get_height (TYPE_2__*) ;
 int widget_move (TYPE_2__*,int ,int) ;
 int widget_padding_get_left (int ) ;
 scalar_t__ widget_padding_get_padding_height (int ) ;
 int widget_padding_get_remaining_height (int ) ;
 int widget_padding_get_remaining_width (int ) ;
 int widget_padding_get_top (int ) ;
 int widget_resize (TYPE_2__*,int,int) ;

__attribute__((used)) static void vert_calculate_size ( box *b )
{
    int spacing = distance_get_pixel ( b->spacing, ROFI_ORIENTATION_VERTICAL );
    int expanding_widgets = 0;
    int active_widgets = 0;
    int rem_width = widget_padding_get_remaining_width ( WIDGET ( b ) );
    int rem_height = widget_padding_get_remaining_height ( WIDGET ( b ) );
    for ( GList *iter = g_list_first ( b->children ); iter != ((void*)0); iter = g_list_next ( iter ) ) {
        widget * child = (widget *) iter->data;
        if ( child->enabled && child->expand == FALSE ) {
            widget_resize ( child, rem_width, widget_get_desired_height ( child ) );
        }
    }
    b->max_size = 0;
    for ( GList *iter = g_list_first ( b->children ); iter != ((void*)0); iter = g_list_next ( iter ) ) {
        widget * child = (widget *) iter->data;
        if ( !child->enabled ) {
            continue;
        }
        active_widgets++;
        if ( child->expand == TRUE ) {
            expanding_widgets++;
            continue;
        }
        if ( child->h > 0 ) {
            b->max_size += child->h;
        }
    }
    if ( active_widgets > 0 ) {
        b->max_size += ( active_widgets - 1 ) * spacing;
    }
    if ( b->max_size > rem_height ) {
        b->max_size = rem_height;
        g_debug ( "Widgets to large (height) for box: %d %d", b->max_size, b->widget.h );
        return;
    }
    if ( active_widgets > 0 ) {
        int top = widget_padding_get_top ( WIDGET ( b ) );
        double rem = rem_height - b->max_size;
        int index = 0;
        for ( GList *iter = g_list_first ( b->children ); iter != ((void*)0); iter = g_list_next ( iter ) ) {
            widget * child = (widget *) iter->data;
            if ( child->enabled == FALSE ) {
                continue;
            }
            if ( child->expand == TRUE ) {

                int expanding_widgets_size = ( rem ) / ( expanding_widgets - index );
                widget_move ( child, widget_padding_get_left ( WIDGET ( b ) ), top );
                top += expanding_widgets_size;
                widget_resize ( child, rem_width, expanding_widgets_size );
                top += spacing;
                rem -= expanding_widgets_size;
                index++;
            }
            else {
                widget_move ( child, widget_padding_get_left ( WIDGET ( b ) ), top );
                top += widget_get_height ( child );
                top += spacing;
            }
        }
    }
    b->max_size += widget_padding_get_padding_height ( WIDGET ( b ) );
}
