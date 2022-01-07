
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PANGO_SCALE ;
 double ch_width ;
 int p_metrics ;
 int pango_font_metrics_get_approximate_digit_width (int ) ;

double textbox_get_estimated_ch ( void )
{
    if ( ch_width < 0 ) {
        int width = pango_font_metrics_get_approximate_digit_width ( p_metrics );
        ch_width = ( width ) / (double) PANGO_SCALE;
    }
    return ch_width;
}
