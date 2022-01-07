
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int widget ;
struct TYPE_4__ {int w; int h; } ;
struct TYPE_5__ {scalar_t__ icon_fetch_id; int xalign; int yalign; int * icon; TYPE_1__ widget; scalar_t__ size; } ;
typedef TYPE_2__ icon ;
typedef int cairo_t ;


 int MAX (int,int) ;
 int WIDGET (TYPE_2__*) ;
 int cairo_image_surface_get_height (int *) ;
 int cairo_image_surface_get_width (int *) ;
 int cairo_paint (int *) ;
 int cairo_restore (int *) ;
 int cairo_save (int *) ;
 int cairo_scale (int *,double,double) ;
 int cairo_set_source_surface (int *,int *,int ,int ) ;
 int cairo_surface_reference (int *) ;
 int cairo_translate (int *,int,int) ;
 int * rofi_icon_fetcher_get (scalar_t__) ;
 int widget_padding_get_bottom (int ) ;
 int widget_padding_get_left (int ) ;
 int widget_padding_get_right (int ) ;
 int widget_padding_get_top (int ) ;

__attribute__((used)) static void icon_draw ( widget *wid, cairo_t *draw )
{
    icon *b = (icon *) wid;

    if ( b->icon == ((void*)0) && b->icon_fetch_id > 0 ) {
        b->icon = rofi_icon_fetcher_get ( b->icon_fetch_id );
        if ( b->icon ) {
            cairo_surface_reference ( b->icon );
        }
    }
    if ( b->icon == ((void*)0) ) {
        return;
    }
    int iconh = cairo_image_surface_get_height ( b->icon );
    int iconw = cairo_image_surface_get_width ( b->icon );
    int icons = MAX ( iconh, iconw );
    double scale = (double) b->size / icons;

    int lpad = widget_padding_get_left ( WIDGET ( b ) ) ;
    int rpad = widget_padding_get_right ( WIDGET ( b ) ) ;
    int tpad = widget_padding_get_top ( WIDGET ( b ) ) ;
    int bpad = widget_padding_get_bottom ( WIDGET ( b ) ) ;

    cairo_save ( draw );

    cairo_translate ( draw,
            lpad + ( b->widget.w - iconw * scale - lpad -rpad )*b->xalign,
            tpad + ( b->widget.h- iconh * scale -tpad - bpad )*b->yalign );
    cairo_scale ( draw, scale, scale );
    cairo_set_source_surface ( draw, b->icon, 0, 0 );
    cairo_paint ( draw );
    cairo_restore ( draw );
}
