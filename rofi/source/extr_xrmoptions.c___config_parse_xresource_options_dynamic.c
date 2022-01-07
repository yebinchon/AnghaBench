
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int xcb_xrm_database_t ;
typedef enum ConfigSource { ____Placeholder_ConfigSource } ConfigSource ;
struct TYPE_3__ {int name; } ;


 int config_parser_set (TYPE_1__*,char*,int) ;
 TYPE_1__* extra_options ;
 int free (char*) ;
 int g_free (char*) ;
 char* g_strdup_printf (char*,char const*,int ) ;
 unsigned int num_extra_options ;
 scalar_t__ xcb_xrm_resource_get_string (int *,char*,int *,char**) ;

__attribute__((used)) static void __config_parse_xresource_options_dynamic ( xcb_xrm_database_t *xDB, enum ConfigSource source )
{
    const char * namePrefix = "rofi";

    for ( unsigned int i = 0; i < num_extra_options; ++i ) {
        char *name;

        name = g_strdup_printf ( "%s.%s", namePrefix, extra_options[i].name );
        char *xrmValue = ((void*)0);
        if ( xcb_xrm_resource_get_string ( xDB, name, ((void*)0), &xrmValue ) == 0 ) {
            config_parser_set ( &( extra_options[i] ), xrmValue, source );
        }
        if ( xrmValue ) {
            free ( xrmValue );
        }

        g_free ( name );
    }
}
