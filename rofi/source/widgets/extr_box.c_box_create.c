
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int widget ;
struct TYPE_6__ {int get_desired_width; int get_desired_height; int find_mouse_target; int update; int resize; int free; int draw; } ;
struct TYPE_7__ {int spacing; int type; TYPE_1__ widget; } ;
typedef TYPE_2__ box ;
typedef int RofiOrientation ;


 int DEFAULT_SPACING ;
 int WIDGET (TYPE_2__*) ;
 int WIDGET_TYPE_UNKNOWN ;
 int box_draw ;
 int box_find_mouse_target ;
 int box_free ;
 int box_get_desired_height ;
 int box_get_desired_width ;
 int box_resize ;
 int box_update ;
 TYPE_2__* g_malloc0 (int) ;
 int rofi_theme_get_distance (int ,char*,int ) ;
 int rofi_theme_get_orientation (int ,char*,int ) ;
 int widget_init (int ,int *,int ,char const*) ;

box * box_create ( widget *parent, const char *name, RofiOrientation type )
{
    box *b = g_malloc0 ( sizeof ( box ) );

    widget_init ( WIDGET ( b ), parent, WIDGET_TYPE_UNKNOWN, name );
    b->type = type;
    b->widget.draw = box_draw;
    b->widget.free = box_free;
    b->widget.resize = box_resize;
    b->widget.update = box_update;
    b->widget.find_mouse_target = box_find_mouse_target;
    b->widget.get_desired_height = box_get_desired_height;
    b->widget.get_desired_width = box_get_desired_width;

    b->type = rofi_theme_get_orientation ( WIDGET ( b ), "orientation", b->type );

    b->spacing = rofi_theme_get_distance ( WIDGET ( b ), "spacing", DEFAULT_SPACING );
    return b;
}
