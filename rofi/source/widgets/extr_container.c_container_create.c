
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int widget ;
struct TYPE_6__ {int get_desired_height; int find_mouse_target; int update; int resize; int free; int draw; } ;
struct TYPE_7__ {TYPE_1__ widget; } ;
typedef TYPE_2__ container ;


 int WIDGET (TYPE_2__*) ;
 int WIDGET_TYPE_UNKNOWN ;
 int container_draw ;
 int container_find_mouse_target ;
 int container_free ;
 int container_get_desired_height ;
 int container_resize ;
 int container_update ;
 TYPE_2__* g_malloc0 (int) ;
 int widget_init (int ,int *,int ,char const*) ;

container * container_create ( widget *parent, const char *name )
{
    container *b = g_malloc0 ( sizeof ( container ) );

    widget_init ( WIDGET ( b ), parent, WIDGET_TYPE_UNKNOWN, name );
    b->widget.draw = container_draw;
    b->widget.free = container_free;
    b->widget.resize = container_resize;
    b->widget.update = container_update;
    b->widget.find_mouse_target = container_find_mouse_target;
    b->widget.get_desired_height = container_get_desired_height;
    return b;
}
