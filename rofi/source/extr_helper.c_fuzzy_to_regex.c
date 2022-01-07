
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef char gchar ;
struct TYPE_7__ {char* str; } ;
typedef TYPE_1__ GString ;


 int FALSE ;
 int g_free (char*) ;
 char* g_regex_escape_string (char const*,int) ;
 int g_string_append (TYPE_1__*,char*) ;
 int g_string_append_c (TYPE_1__*,char) ;
 int g_string_append_unichar (TYPE_1__*,int ) ;
 int g_string_free (TYPE_1__*,int ) ;
 TYPE_1__* g_string_new (char*) ;
 int g_utf8_get_char (char*) ;
 char* g_utf8_next_char (char*) ;

__attribute__((used)) static gchar *fuzzy_to_regex ( const char * input )
{
    GString *str = g_string_new ( "" );
    gchar *r = g_regex_escape_string ( input, -1 );
    gchar *iter;
    int first = 1;
    for ( iter = r; iter && *iter != '\0'; iter = g_utf8_next_char ( iter ) ) {
        if ( first ) {
            g_string_append ( str, "(" );
        }
        else {
            g_string_append ( str, ".*(" );
        }
        if ( *iter == '\\' ) {
            g_string_append_c ( str, '\\' );
            iter = g_utf8_next_char ( iter );

            if ( ( *iter ) == '\0' ) {
                break;
            }
        }
        g_string_append_unichar ( str, g_utf8_get_char ( iter ) );
        g_string_append ( str, ")" );
        first = 0;
    }
    g_free ( r );
    char *retv = str->str;
    g_string_free ( str, FALSE );
    return retv;
}
