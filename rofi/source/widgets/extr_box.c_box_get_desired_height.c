
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int enabled; } ;
typedef TYPE_1__ widget ;
struct TYPE_11__ {scalar_t__ type; int children; int spacing; } ;
typedef TYPE_2__ box ;
struct TYPE_12__ {scalar_t__ data; } ;
typedef TYPE_3__ GList ;


 int MAX (scalar_t__,int) ;
 scalar_t__ ROFI_ORIENTATION_VERTICAL ;
 int distance_get_pixel (int ,scalar_t__) ;
 TYPE_3__* g_list_first (int ) ;
 TYPE_3__* g_list_next (TYPE_3__*) ;
 scalar_t__ widget_get_desired_height (TYPE_1__*) ;
 scalar_t__ widget_padding_get_padding_height (TYPE_1__*) ;

__attribute__((used)) static int box_get_desired_height ( widget *wid )
{
    box *b = (box *) wid;
    int spacing = distance_get_pixel ( b->spacing, b->type );
    int height = 0;
    if ( b->type == ROFI_ORIENTATION_VERTICAL ) {
        int active_widgets = 0;
        for ( GList *iter = g_list_first ( b->children ); iter != ((void*)0); iter = g_list_next ( iter ) ) {
            widget * child = (widget *) iter->data;
            if ( !child->enabled ) {
                continue;
            }
            active_widgets++;
            height += widget_get_desired_height ( child );
        }
        if ( active_widgets > 0 ) {
            height += ( active_widgets - 1 ) * spacing;
        }
    }
    else {
        for ( GList *iter = g_list_first ( b->children ); iter != ((void*)0); iter = g_list_next ( iter ) ) {
            widget * child = (widget *) iter->data;
            if ( !child->enabled ) {
                continue;
            }
            height = MAX ( widget_get_desired_height ( child ), height );
        }
    }
    height += widget_padding_get_padding_height ( wid );
    return height;
}
