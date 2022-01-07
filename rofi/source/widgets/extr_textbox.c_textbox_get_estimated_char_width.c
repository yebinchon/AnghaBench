
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PANGO_SCALE ;
 double char_width ;
 int p_metrics ;
 int pango_font_metrics_get_approximate_char_width (int ) ;

double textbox_get_estimated_char_width ( void )
{
    if ( char_width < 0 ) {
        int width = pango_font_metrics_get_approximate_char_width ( p_metrics );
        char_width = ( width ) / (double) PANGO_SCALE;
    }
    return char_width;
}
