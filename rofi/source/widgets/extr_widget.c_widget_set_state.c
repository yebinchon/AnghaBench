
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char const* state; int def_border_radius; void* border_radius; int def_border; void* border; } ;
typedef TYPE_1__ widget ;


 scalar_t__ g_strcmp0 (char const*,char const*) ;
 void* rofi_theme_get_padding (TYPE_1__*,char*,int ) ;
 int widget_queue_redraw (TYPE_1__*) ;

void widget_set_state ( widget *widget, const char *state )
{
    if ( g_strcmp0 ( widget->state, state ) ) {
        widget->state = state;

        widget->border = rofi_theme_get_padding ( widget, "border", widget->def_border );
        widget->border_radius = rofi_theme_get_padding ( widget, "border-radius", widget->def_border_radius );

        widget_queue_redraw ( widget );
    }
}
