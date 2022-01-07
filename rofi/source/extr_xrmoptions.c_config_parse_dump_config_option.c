
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* num; int* snum; char** str; int* charc; } ;
struct TYPE_5__ {int type; scalar_t__ source; char* name; TYPE_1__ value; } ;
typedef TYPE_2__ XrmOption ;


 scalar_t__ CONFIG_DEFAULT ;
 int TRUE ;
 int printf (char*,...) ;






__attribute__((used)) static void config_parse_dump_config_option ( XrmOption *option )
{
    if ( option->type == 131 || option->source == CONFIG_DEFAULT ) {
        printf ( "/*" );
    }
    printf ( "\t%s: ", option->name );
    switch ( option->type )
    {
    case 130:
        printf ( "%u", *( option->value.num ) );
        break;
    case 129:
        printf ( "%i", *( option->value.snum ) );
        break;
    case 128:
        if ( ( *( option->value.str ) ) != ((void*)0) ) {

            printf ( "\"%s\"", *( option->value.str ) );
        }
        break;
    case 132:
        printf ( "%s", ( *( option->value.num ) == TRUE ) ? "true" : "false" );
        break;
    case 131:

        if ( *( option->value.charc ) > 32 && *( option->value.charc ) < 127 ) {
            printf ( "'%c'", *( option->value.charc ) );
        }
        else {
            printf ( "'\\x%02X'", *( option->value.charc ) );
        }
        printf ( " /* unsupported */" );
        break;
    default:
        break;
    }

    printf ( ";" );
    if ( option->type == 131 || option->source == CONFIG_DEFAULT ) {
        printf ( "*/" );
    }
    printf ( "\n" );
}
