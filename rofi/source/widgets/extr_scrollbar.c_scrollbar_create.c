
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int widget ;
struct TYPE_6__ {int get_desired_height; int motion_notify; int trigger_action; int free; int draw; int h; scalar_t__ w; scalar_t__ y; scalar_t__ x; } ;
struct TYPE_7__ {int length; int pos_length; scalar_t__ pos; TYPE_1__ widget; int width; } ;
typedef TYPE_2__ scrollbar ;


 int DEFAULT_SCROLLBAR_WIDTH ;
 int ROFI_ORIENTATION_HORIZONTAL ;
 int WIDGET (TYPE_2__*) ;
 int WIDGET_TYPE_SCROLLBAR ;
 int distance_get_pixel (int ,int ) ;
 TYPE_2__* g_malloc0 (int) ;
 int rofi_theme_get_distance (int ,char*,int ) ;
 int scrollbar_draw ;
 int scrollbar_free ;
 int scrollbar_get_desired_height ;
 int scrollbar_motion_notify ;
 int scrollbar_trigger_action ;
 int widget_init (int ,int *,int ,char const*) ;
 int widget_padding_get_padding_height (int ) ;
 scalar_t__ widget_padding_get_padding_width (int ) ;

scrollbar *scrollbar_create ( widget *parent, const char *name )
{
    scrollbar *sb = g_malloc0 ( sizeof ( scrollbar ) );
    widget_init ( WIDGET ( sb ), parent, WIDGET_TYPE_SCROLLBAR, name );
    sb->widget.x = 0;
    sb->widget.y = 0;
    sb->width = rofi_theme_get_distance ( WIDGET ( sb ), "handle-width", DEFAULT_SCROLLBAR_WIDTH );
    int width = distance_get_pixel ( sb->width, ROFI_ORIENTATION_HORIZONTAL );
    sb->widget.w = widget_padding_get_padding_width ( WIDGET ( sb ) ) + width;
    sb->widget.h = widget_padding_get_padding_height ( WIDGET ( sb ) );

    sb->widget.draw = scrollbar_draw;
    sb->widget.free = scrollbar_free;
    sb->widget.trigger_action = scrollbar_trigger_action;
    sb->widget.motion_notify = scrollbar_motion_notify;
    sb->widget.get_desired_height = scrollbar_get_desired_height;

    sb->length = 10;
    sb->pos = 0;
    sb->pos_length = 4;

    return sb;
}
