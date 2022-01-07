
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {unsigned int h; } ;
typedef TYPE_1__ widget ;
struct TYPE_10__ {unsigned int length; double pos; scalar_t__ pos_length; } ;
typedef TYPE_2__ scrollbar ;
typedef int cairo_t ;


 unsigned int MAX (int,unsigned int) ;
 unsigned int MIN (unsigned int,unsigned int) ;
 int WIDGET (TYPE_2__*) ;
 int cairo_fill (int *) ;
 int cairo_rectangle (int *,int ,scalar_t__,int ,unsigned int) ;
 int rofi_theme_get_color (int ,char*,int *) ;
 int widget_padding_get_left (TYPE_1__*) ;
 unsigned int widget_padding_get_remaining_height (TYPE_1__*) ;
 int widget_padding_get_remaining_width (TYPE_1__*) ;
 scalar_t__ widget_padding_get_top (TYPE_1__*) ;

__attribute__((used)) static void scrollbar_draw ( widget *wid, cairo_t *draw )
{
    scrollbar *sb = (scrollbar *) wid;
    unsigned int wh = widget_padding_get_remaining_height ( wid );

    unsigned int r = ( sb->length * wh ) / ( (double) ( sb->length + sb->pos_length ) );
    unsigned int handle = wid->h - r;
    double sec = ( ( r ) / (double) ( sb->length - 1 ) );
    unsigned int height = handle;
    unsigned int y = sb->pos * sec;

    y = MIN ( y, wh - handle );

    height = MAX ( 2, height );

    rofi_theme_get_color ( WIDGET ( sb ), "handle-color", draw );

    cairo_rectangle ( draw,
                      widget_padding_get_left ( wid ),
                      widget_padding_get_top ( wid ) + y,
                      widget_padding_get_remaining_width ( wid ),
                      height );
    cairo_fill ( draw );
}
