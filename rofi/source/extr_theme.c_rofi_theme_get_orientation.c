
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {char* state; int name; struct TYPE_7__* parent; } ;
typedef TYPE_2__ widget ;
typedef int ThemeWidget ;
struct TYPE_6__ {int b; } ;
struct TYPE_8__ {scalar_t__ type; TYPE_1__ value; } ;
typedef int RofiOrientation ;
typedef TYPE_3__ Property ;


 int FALSE ;
 scalar_t__ P_INHERIT ;
 int P_ORIENTATION ;
 int g_debug (char*,int ,char*,char const*) ;
 TYPE_3__* rofi_theme_find_property (int *,int ,char const*,int ) ;
 int * rofi_theme_find_widget (int ,char*,int ) ;

RofiOrientation rofi_theme_get_orientation ( const widget *widget, const char *property, RofiOrientation def )
{
    ThemeWidget *wid = rofi_theme_find_widget ( widget->name, widget->state, FALSE );
    Property *p = rofi_theme_find_property ( wid, P_ORIENTATION, property, FALSE );
    if ( p ) {
        if ( p->type == P_INHERIT ) {
            if ( widget->parent ) {
                return rofi_theme_get_orientation ( widget->parent, property, def );
            }
            return def;
        }
        return p->value.b;
    }
    g_debug ( "Theme entry: #%s %s property %s unset.", widget->name, widget->state ? widget->state : "", property );
    return def;
}
