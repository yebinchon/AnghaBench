
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int metrics; } ;
typedef TYPE_1__ textbox ;


 int PANGO_SCALE ;
 int WIDGET (TYPE_1__ const*) ;
 int pango_font_metrics_get_ascent (int ) ;
 int pango_font_metrics_get_descent (int ) ;
 int widget_padding_get_padding_height (int ) ;

int textbox_get_estimated_height ( const textbox *tb, int eh )
{
    int height = pango_font_metrics_get_ascent ( tb->metrics ) + pango_font_metrics_get_descent ( tb->metrics );
    return ( eh * height ) / PANGO_SCALE + widget_padding_get_padding_height ( WIDGET ( tb ) );
}
