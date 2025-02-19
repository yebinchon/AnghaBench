
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {unsigned int h; } ;
typedef TYPE_3__ widget ;
struct TYPE_13__ {int w; } ;
struct TYPE_16__ {scalar_t__ scroll_type; int cur_columns; int max_rows; unsigned int last_offset; scalar_t__ cur_elements; int element_height; int scrollbar; TYPE_2__* boxes; scalar_t__ rchanged; scalar_t__ reverse; TYPE_1__ widget; scalar_t__ req_elements; int spacing; scalar_t__ selected; } ;
typedef TYPE_4__ listview ;
typedef int cairo_t ;
struct TYPE_14__ {int box; } ;


 scalar_t__ FALSE ;
 scalar_t__ LISTVIEW_SCROLL_CONTINIOUS ;
 unsigned int MIN (scalar_t__,scalar_t__) ;
 int ROFI_ORIENTATION_HORIZONTAL ;
 int ROFI_ORIENTATION_VERTICAL ;
 scalar_t__ TRUE ;
 int WIDGET (int ) ;
 int distance_get_pixel (int ,int ) ;
 unsigned int scroll_continious (TYPE_4__*) ;
 unsigned int scroll_per_page (TYPE_4__*) ;
 int scrollbar_set_handle (int ,scalar_t__) ;
 int scrollbar_set_handle_length (int ,int) ;
 int scrollbar_set_max_value (int ,scalar_t__) ;
 int update_element (TYPE_4__*,unsigned int,unsigned int,scalar_t__) ;
 int widget_draw (int ,int *) ;
 scalar_t__ widget_enabled (int ) ;
 scalar_t__ widget_get_width (int ) ;
 int widget_move (int ,unsigned int,unsigned int) ;
 unsigned int widget_padding_get_bottom (TYPE_3__*) ;
 int widget_padding_get_left (TYPE_3__*) ;
 scalar_t__ widget_padding_get_padding_width (TYPE_3__*) ;
 int widget_padding_get_top (TYPE_3__*) ;
 int widget_resize (int ,unsigned int,unsigned int) ;

__attribute__((used)) static void listview_draw ( widget *wid, cairo_t *draw )
{
    unsigned int offset = 0;
    listview *lv = (listview *) wid;
    if ( lv->scroll_type == LISTVIEW_SCROLL_CONTINIOUS ) {
        offset = scroll_continious ( lv );
    }
    else {
        offset = scroll_per_page ( lv );
    }

    scrollbar_set_max_value ( lv->scrollbar, lv->req_elements );
    scrollbar_set_handle_length ( lv->scrollbar, lv->cur_columns * lv->max_rows );
    if ( lv->reverse ) {
        scrollbar_set_handle ( lv->scrollbar, lv->req_elements - lv->selected - 1 );
    }
    else {
        scrollbar_set_handle ( lv->scrollbar, lv->selected );
    }
    lv->last_offset = offset;
    int spacing_vert = distance_get_pixel ( lv->spacing, ROFI_ORIENTATION_VERTICAL );
    int spacing_hori = distance_get_pixel ( lv->spacing, ROFI_ORIENTATION_HORIZONTAL );

    int left_offset = widget_padding_get_left ( wid );
    int top_offset = widget_padding_get_top ( wid );





    if ( lv->cur_elements > 0 && lv->max_rows > 0 ) {

        unsigned int max = MIN ( lv->cur_elements, lv->req_elements - offset );
        if ( lv->rchanged ) {
            unsigned int width = lv->widget.w - spacing_hori * ( lv->cur_columns - 1 );
            width -= widget_padding_get_padding_width ( wid );
            if ( widget_enabled ( WIDGET ( lv->scrollbar ) ) ) {
                width -= spacing_hori;
                width -= widget_get_width ( WIDGET ( lv->scrollbar ) );
            }
            unsigned int element_width = ( width ) / lv->cur_columns;
            for ( unsigned int i = 0; i < max; i++ ) {
                unsigned int ex = left_offset + ( ( i ) / lv->max_rows ) * ( element_width + spacing_hori );
                if ( lv->reverse ) {
                    unsigned int ey = wid->h - ( widget_padding_get_bottom ( wid ) + ( ( i ) % lv->max_rows ) * ( lv->element_height + spacing_vert ) ) - lv->element_height;
                    widget_move ( WIDGET(lv->boxes[i].box), ex, ey);
                    widget_resize ( WIDGET (lv->boxes[i].box), element_width, lv->element_height);
                }
                else {
                    unsigned int ey = top_offset + ( ( i ) % lv->max_rows ) * ( lv->element_height + spacing_vert );
                    widget_move ( WIDGET(lv->boxes[i].box), ex, ey);
                    widget_resize ( WIDGET (lv->boxes[i].box), element_width, lv->element_height);
                }

                update_element ( lv, i, i + offset, TRUE );
                widget_draw ( WIDGET ( lv->boxes[i].box ), draw );
            }
            lv->rchanged = FALSE;
        }
        else {
            for ( unsigned int i = 0; i < max; i++ ) {
                update_element ( lv, i, i + offset, FALSE );
                widget_draw ( WIDGET ( lv->boxes[i].box ), draw );
            }
        }
    }
    widget_draw ( WIDGET ( lv->scrollbar ), draw );
}
