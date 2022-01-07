
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_15__ ;
typedef struct TYPE_17__ TYPE_12__ ;


typedef int ThemeWidget ;
struct TYPE_25__ {unsigned int num_switchers; unsigned int* starts; unsigned int* lengths; TYPE_1__* switchers; } ;
struct TYPE_24__ {int name; } ;
struct TYPE_23__ {int end_index; int start_index; } ;
struct TYPE_20__ {int red; int green; int blue; } ;
struct TYPE_21__ {TYPE_2__ color; } ;
struct TYPE_22__ {TYPE_3__ value; } ;
struct TYPE_19__ {TYPE_12__* mode; } ;
struct TYPE_18__ {int combi_hide_mode_prefix; } ;
struct TYPE_17__ {int name; } ;
typedef TYPE_4__ Property ;
typedef TYPE_5__ PangoAttribute ;
typedef TYPE_6__ Mode ;
typedef int GList ;
typedef TYPE_7__ CombiModePrivateData ;


 int FALSE ;
 int PANGO_ATTR_INDEX_FROM_TEXT_BEGINNING ;
 int P_COLOR ;
 int TRUE ;
 TYPE_15__ config ;
 int g_free (char*) ;
 int * g_list_append (int *,TYPE_5__*) ;
 char* g_strdup_printf (char*,char const*,char*) ;
 char* mode_get_display_name (TYPE_12__*) ;
 char* mode_get_display_value (TYPE_12__*,unsigned int,int*,int **,int ) ;
 TYPE_7__* mode_get_private_data (TYPE_6__ const*) ;
 TYPE_5__* pango_attr_foreground_new (int,int,int) ;
 TYPE_4__* rofi_theme_find_property (int *,int ,int ,int ) ;
 int * rofi_theme_find_widget (int ,int *,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static char * combi_mgrv ( const Mode *sw, unsigned int selected_line, int *state, GList **attr_list, int get_entry )
{
    CombiModePrivateData *pd = mode_get_private_data ( sw );
    if ( !get_entry ) {
        for ( unsigned i = 0; i < pd->num_switchers; i++ ) {
            if ( selected_line >= pd->starts[i] && selected_line < ( pd->starts[i] + pd->lengths[i] ) ) {
                mode_get_display_value ( pd->switchers[i].mode, selected_line - pd->starts[i], state, attr_list, FALSE );
                return ((void*)0);
            }
        }
        return ((void*)0);
    }
    for ( unsigned i = 0; i < pd->num_switchers; i++ ) {
        if ( selected_line >= pd->starts[i] && selected_line < ( pd->starts[i] + pd->lengths[i] ) ) {
            char * retv;
            char * str = retv = mode_get_display_value ( pd->switchers[i].mode, selected_line - pd->starts[i], state, attr_list, TRUE );
            const char *dname = mode_get_display_name ( pd->switchers[i].mode );
            if ( !config.combi_hide_mode_prefix ) {
                retv = g_strdup_printf ( "%s %s", dname, str );
                g_free ( str );
            }

            if ( attr_list != ((void*)0) ) {
                ThemeWidget *wid = rofi_theme_find_widget ( sw->name, ((void*)0), TRUE );
                Property *p = rofi_theme_find_property ( wid, P_COLOR, pd->switchers[i].mode->name, TRUE );
                if ( p != ((void*)0) ) {
                    PangoAttribute *pa = pango_attr_foreground_new (
                        p->value.color.red * 65535,
                        p->value.color.green * 65535,
                        p->value.color.blue * 65535 );
                    pa->start_index = PANGO_ATTR_INDEX_FROM_TEXT_BEGINNING;
                    pa->end_index = strlen ( dname );
                    *attr_list = g_list_append ( *attr_list, pa );
                }
            }
            return retv;
        }
    }

    return ((void*)0);
}
