
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* parent; int state; int name; } ;
typedef TYPE_2__ widget ;
typedef int ThemeWidget ;
struct TYPE_6__ {int list; } ;
struct TYPE_8__ {scalar_t__ type; TYPE_1__ value; } ;
typedef TYPE_3__ Property ;
typedef int GList ;


 scalar_t__ P_INHERIT ;
 scalar_t__ P_LIST ;
 int TRUE ;
 int g_free (char**) ;
 int * g_list_append (int *,char*) ;
 int * g_list_copy_deep (int ,int ,int *) ;
 char** g_strsplit (char const*,char*,int ) ;
 int rofi_g_list_strdup ;
 TYPE_3__* rofi_theme_find_property (int *,scalar_t__,char const*,int ) ;
 int * rofi_theme_find_widget (int ,int ,int ) ;

GList *rofi_theme_get_list ( const widget *widget, const char * property, const char *defaults )
{
    ThemeWidget *wid2 = rofi_theme_find_widget ( widget->name, widget->state, TRUE );
    Property *p = rofi_theme_find_property ( wid2, P_LIST, property, TRUE );
    if ( p ) {
        if ( p->type == P_INHERIT ) {
            if ( widget->parent ) {
                return rofi_theme_get_list ( widget->parent, property, defaults );
            }
        }
        else if ( p->type == P_LIST ) {
            return g_list_copy_deep ( p->value.list, rofi_g_list_strdup, ((void*)0) );
        }
    }
    char **r = defaults ? g_strsplit ( defaults, ",", 0 ) : ((void*)0);
    if ( r ) {
        GList *l = ((void*)0);
        for ( int i = 0; r[i] != ((void*)0); i++ ) {
            l = g_list_append ( l, r[i] );
        }
        g_free ( r );
        return l;
    }
    return ((void*)0);
}
