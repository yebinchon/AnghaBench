
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef enum ConfigSource { ____Placeholder_ConfigSource } ConfigSource ;
struct TYPE_4__ {unsigned int* num; int* snum; int * charc; int ** str; } ;
struct TYPE_5__ {int type; int source; TYPE_1__ value; int * mem; } ;
typedef TYPE_2__ XrmOption ;


 unsigned int FALSE ;
 unsigned int TRUE ;
 int g_ascii_strcasecmp (char*,char*) ;
 scalar_t__ g_ascii_strtoll (char*,int *,int) ;
 scalar_t__ g_ascii_strtoull (char*,int *,int) ;
 int g_free (int *) ;
 int * g_strchomp (int ) ;
 int g_strdup (char*) ;
 int helper_parse_char (char*) ;
 int strlen (char*) ;






__attribute__((used)) static void config_parser_set ( XrmOption *option, char *xrmValue, enum ConfigSource source )
{
    switch ( option->type )
    {
    case 128:
        if ( ( option )->mem != ((void*)0) ) {
            g_free ( option->mem );
            option->mem = ((void*)0);
        }
        *( option->value.str ) = g_strchomp ( g_strdup ( xrmValue ) );


        ( option )->mem = *( option->value.str );
        break;
    case 130:
        *( option->value.num ) = (unsigned int) g_ascii_strtoull ( xrmValue, ((void*)0), 10 );
        break;
    case 129:
        *( option->value.snum ) = (int) g_ascii_strtoll ( xrmValue, ((void*)0), 10 );
        break;
    case 132:
        if ( strlen ( xrmValue ) > 0 &&
             g_ascii_strcasecmp ( xrmValue, "true" ) == 0 ) {
            *( option->value.num ) = TRUE;
        }
        else{
            *( option->value.num ) = FALSE;
        }
        break;
    case 131:
        *( option->value.charc ) = helper_parse_char ( xrmValue );
        break;
    }
    option->source = source;
}
