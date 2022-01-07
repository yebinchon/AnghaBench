
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef char gchar ;
struct TYPE_3__ {scalar_t__* columns; int column_separator; } ;
typedef TYPE_1__ DmenuModePrivateData ;


 int G_REGEX_CASELESS ;
 scalar_t__ g_ascii_strtoull (scalar_t__,int *,int) ;
 int g_free (char*) ;
 char** g_regex_split_simple (int ,char const*,int ,int) ;
 char* g_strdup (char const*) ;
 int g_strfreev (char**) ;
 char* g_strjoin (char*,char*,char*,int *) ;

__attribute__((used)) static gchar * dmenu_format_output_string ( const DmenuModePrivateData *pd, const char *input )
{
    if ( pd->columns == ((void*)0) ) {
        return g_strdup ( input );
    }
    char *retv = ((void*)0);
    char ** splitted = g_regex_split_simple ( pd->column_separator, input, G_REGEX_CASELESS, 00 );
    uint32_t ns = 0;
    for (; splitted && splitted[ns]; ns++ ) {
        ;
    }
    for ( uint32_t i = 0; pd->columns && pd->columns[i]; i++ ) {
        unsigned int index = (unsigned int ) g_ascii_strtoull ( pd->columns[i], ((void*)0), 10 );
        if ( index < ns && index > 0 ) {
            if ( retv == ((void*)0) ) {
                retv = g_strdup ( splitted[index - 1] );
            }
            else {
                gchar *t = g_strjoin ( "\t", retv, splitted[index - 1], ((void*)0) );
                g_free ( retv );
                retv = t;
            }
        }
    }
    g_strfreev ( splitted );
    return retv ? retv : g_strdup ( "" );
}
