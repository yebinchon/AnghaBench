
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int charc; int * num; int str; int snum; } ;
struct TYPE_5__ {int type; char* mem; void* source; TYPE_1__ value; int name; } ;
typedef TYPE_2__ XrmOption ;


 void* CONFIG_CMDLINE ;
 int FALSE ;
 int TRUE ;
 int find_arg (char*) ;
 int find_arg_char (char*,int ) ;
 int find_arg_int (char*,int ) ;
 int find_arg_str (char*,int ) ;
 int find_arg_uint (char*,int *) ;
 int g_free (char*) ;
 char* g_strdup_printf (char*,int ) ;






__attribute__((used)) static void config_parse_cmd_option ( XrmOption *option )
{

    char *key = g_strdup_printf ( "-%s", option->name );
    switch ( option->type )
    {
    case 130:
        if ( find_arg_uint ( key, option->value.num ) == TRUE ) {
            option->source = CONFIG_CMDLINE;
        }
        break;
    case 129:
        if ( find_arg_int ( key, option->value.snum ) == TRUE ) {
            option->source = CONFIG_CMDLINE;
        }
        break;
    case 128:
        if ( find_arg_str ( key, option->value.str ) == TRUE ) {
            if ( option->mem != ((void*)0) ) {
                g_free ( option->mem );
                option->mem = ((void*)0);
            }
            option->source = CONFIG_CMDLINE;
        }
        break;
    case 132:
        if ( find_arg ( key ) >= 0 ) {
            *( option->value.num ) = TRUE;
            option->source = CONFIG_CMDLINE;
        }
        else {
            g_free ( key );
            key = g_strdup_printf ( "-no-%s", option->name );
            if ( find_arg ( key ) >= 0 ) {
                *( option->value.num ) = FALSE;
                option->source = CONFIG_CMDLINE;
            }
        }
        break;
    case 131:
        if ( find_arg_char ( key, option->value.charc ) == TRUE ) {
            option->source = CONFIG_CMDLINE;
        }
        break;
    default:
        break;
    }
    g_free ( key );
}
