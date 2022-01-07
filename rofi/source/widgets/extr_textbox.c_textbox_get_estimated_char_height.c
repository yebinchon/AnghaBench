
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PANGO_SCALE ;
 double char_height ;
 int p_metrics ;
 int pango_font_metrics_get_ascent (int ) ;
 int pango_font_metrics_get_descent (int ) ;

double textbox_get_estimated_char_height ( void )
{
    if ( char_height < 0 ) {
        int height = pango_font_metrics_get_ascent ( p_metrics ) + pango_font_metrics_get_descent ( p_metrics );
        char_height = ( height ) / (double) PANGO_SCALE;
    }
    return char_height;
}
