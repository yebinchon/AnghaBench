
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int widget ;
struct TYPE_7__ {int h; scalar_t__ w; } ;
struct TYPE_8__ {int flags; double yalign; double xalign; int tbft; TYPE_1__ widget; int layout; int cursor; scalar_t__ blink; int metrics; scalar_t__ changed; } ;
typedef TYPE_2__ textbox ;
typedef int cairo_t ;
struct TYPE_9__ {int x; int y; int height; } ;
typedef TYPE_3__ PangoRectangle ;


 int CAIRO_OPERATOR_OVER ;
 double DOT_OFFSET ;
 int MAX (int ,scalar_t__) ;
 int MIN (int ,int ) ;
 double M_PI ;
 int PANGO_SCALE ;
 int SELECTED ;
 int TB_EDITABLE ;
 int TB_INDICATOR ;
 int WIDGET (TYPE_2__*) ;
 int __textbox_update_pango_text (TYPE_2__*) ;
 int cairo_arc (int *,double,double,double,int ,double) ;
 int cairo_fill (int *) ;
 int cairo_move_to (int *,int,int) ;
 int cairo_rectangle (int *,int,int,int,int) ;
 int cairo_set_operator (int *,int ) ;
 int cairo_set_source_rgb (int *,double,double,double) ;
 char* g_utf8_offset_to_pointer (char const*,int) ;
 int g_utf8_strlen (char const*,int) ;
 int pango_cairo_show_layout (int *,int ) ;
 int pango_font_metrics_get_ascent (int ) ;
 int pango_layout_get_baseline (int ) ;
 int pango_layout_get_cursor_pos (int ,int,TYPE_3__*,int *) ;
 int pango_layout_get_pixel_size (int ,int*,int*) ;
 char* pango_layout_get_text (int ) ;
 int rofi_theme_get_color (int ,char*,int *) ;
 int widget_padding_get_bottom (int ) ;
 int widget_padding_get_left (int ) ;
 scalar_t__ widget_padding_get_padding_width (int ) ;
 int widget_padding_get_top (int ) ;

__attribute__((used)) static void textbox_draw ( widget *wid, cairo_t *draw )
{
    if ( wid == ((void*)0) ) {
        return;
    }
    textbox *tb = (textbox *) wid;
    unsigned int offset = ( ( tb->flags & TB_INDICATOR ) ? DOT_OFFSET : 0 );

    if ( tb->changed ) {
        __textbox_update_pango_text ( tb );
    }


    int x = widget_padding_get_left ( WIDGET ( tb ) );
    int top = widget_padding_get_top ( WIDGET ( tb ) );
    int y = ( pango_font_metrics_get_ascent ( tb->metrics ) - pango_layout_get_baseline ( tb->layout ) ) / PANGO_SCALE;
    int line_width = 0, line_height = 0;

    pango_layout_get_pixel_size ( tb->layout, &line_width, &line_height );

    if ( tb->yalign > 0.001 ) {
        int bottom = widget_padding_get_bottom ( WIDGET ( tb ) );
        top = ( tb->widget.h - bottom - line_height - top ) * tb->yalign + top;
    }
    y += top;

    x += offset;

    if ( tb->xalign > 0.001 ) {
        int rem = MAX ( 0, tb->widget.w - widget_padding_get_padding_width ( WIDGET ( tb ) ) - line_width );
        x = tb->xalign * rem + widget_padding_get_left ( WIDGET ( tb ) );
    }

    cairo_set_operator ( draw, CAIRO_OPERATOR_OVER );
    cairo_set_source_rgb ( draw, 0.0, 0.0, 0.0 );
    rofi_theme_get_color ( WIDGET ( tb ), "text-color", draw );

    if ( tb->flags & TB_EDITABLE && tb->blink ) {

        const char *text = pango_layout_get_text ( tb->layout );

        int cursor_offset = MIN ( tb->cursor, g_utf8_strlen ( text, -1 ) );
        PangoRectangle pos;

        char *offset = g_utf8_offset_to_pointer ( text, cursor_offset );
        pango_layout_get_cursor_pos ( tb->layout, offset - text, &pos, ((void*)0) );
        int cursor_x = pos.x / PANGO_SCALE;
        int cursor_y = pos.y / PANGO_SCALE;
        int cursor_height = pos.height / PANGO_SCALE;
        int cursor_width = 2;
        cairo_rectangle ( draw, x + cursor_x, y + cursor_y, cursor_width, cursor_height );
        cairo_fill ( draw );
    }



    cairo_move_to ( draw, x, top );
    pango_cairo_show_layout ( draw, tb->layout );

    if ( ( tb->flags & TB_INDICATOR ) == TB_INDICATOR && ( tb->tbft & ( SELECTED ) ) ) {
        cairo_arc ( draw, DOT_OFFSET / 2.0, tb->widget.h / 2.0, 2.0, 0, 2.0 * M_PI );
        cairo_fill ( draw );
    }
}
