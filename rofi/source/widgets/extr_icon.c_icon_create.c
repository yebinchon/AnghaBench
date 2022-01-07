
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int widget ;
struct TYPE_6__ {int get_desired_width; int get_desired_height; int resize; int free; int draw; } ;
struct TYPE_7__ {int size; void* xalign; void* yalign; int icon_fetch_id; TYPE_1__ widget; } ;
typedef TYPE_2__ icon ;
typedef int RofiDistance ;


 void* MAX (int ,int ) ;
 int MIN (double,void*) ;
 int ROFI_ORIENTATION_VERTICAL ;
 int WIDGET (TYPE_2__*) ;
 int WIDGET_TYPE_UNKNOWN ;
 int distance_get_pixel (int ,int ) ;
 TYPE_2__* g_malloc0 (int) ;
 int icon_draw ;
 int icon_free ;
 int icon_get_desired_height ;
 int icon_get_desired_width ;
 int icon_resize ;
 int rofi_icon_fetcher_query (char const*,int) ;
 int rofi_theme_get_distance (int ,char*,int) ;
 void* rofi_theme_get_double (int ,char*,double) ;
 char* rofi_theme_get_string (int ,char*,int *) ;
 int widget_init (int ,int *,int ,char const*) ;

icon * icon_create ( widget *parent, const char *name )
{
    icon *b = g_malloc0 ( sizeof ( icon ) );

    b->size = 16;

    widget_init ( WIDGET ( b ), parent, WIDGET_TYPE_UNKNOWN, name );
    b->widget.draw = icon_draw;
    b->widget.free = icon_free;
    b->widget.resize = icon_resize;
    b->widget.get_desired_height = icon_get_desired_height;
    b->widget.get_desired_width = icon_get_desired_width;

    RofiDistance d = rofi_theme_get_distance ( WIDGET (b), "size" , b->size );
    b->size = distance_get_pixel ( d, ROFI_ORIENTATION_VERTICAL );

    const char * filename = rofi_theme_get_string ( WIDGET ( b ), "filename", ((void*)0) );
    if ( filename ) {
        b->icon_fetch_id = rofi_icon_fetcher_query ( filename, b->size );
    }
    b->yalign = rofi_theme_get_double ( WIDGET ( b ), "vertical-align", 0.5 );
    b->yalign = MAX ( 0, MIN ( 1.0, b->yalign ) );
    b->xalign = rofi_theme_get_double ( WIDGET ( b ), "horizontal-align", 0.5 );
    b->xalign = MAX ( 0, MIN ( 1.0, b->xalign ) );

    return b;
}
