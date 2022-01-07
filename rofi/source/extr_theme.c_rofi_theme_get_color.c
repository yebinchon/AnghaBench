
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {char* state; int name; struct TYPE_9__* parent; } ;
typedef TYPE_3__ widget ;
typedef int cairo_t ;
typedef int ThemeWidget ;
struct TYPE_7__ {int alpha; int blue; int green; int red; } ;
struct TYPE_8__ {TYPE_1__ color; } ;
struct TYPE_10__ {scalar_t__ type; TYPE_2__ value; } ;
typedef TYPE_4__ Property ;


 int FALSE ;
 int P_COLOR ;
 scalar_t__ P_INHERIT ;
 int cairo_set_source_rgba (int *,int ,int ,int ,int ) ;
 int g_debug (char*,int ,char*,char const*) ;
 TYPE_4__* rofi_theme_find_property (int *,int ,char const*,int ) ;
 int * rofi_theme_find_widget (int ,char*,int ) ;

void rofi_theme_get_color ( const widget *widget, const char *property, cairo_t *d )
{
    ThemeWidget *wid = rofi_theme_find_widget ( widget->name, widget->state, FALSE );
    Property *p = rofi_theme_find_property ( wid, P_COLOR, property, FALSE );
    if ( p ) {
        if ( p->type == P_INHERIT ) {
            if ( widget->parent ) {
                rofi_theme_get_color ( widget->parent, property, d );
            }
            return;
        }
        cairo_set_source_rgba ( d,
                                p->value.color.red,
                                p->value.color.green,
                                p->value.color.blue,
                                p->value.color.alpha
                                );
    }
    else {
        g_debug ( "Theme entry: #%s %s property %s unset.", widget->name, widget->state ? widget->state : "", property );
    }
}
