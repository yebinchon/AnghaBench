
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef char gchar ;
typedef int GString ;


 int FALSE ;
 char* g_memdup (char const*,int) ;
 int g_string_append (int *,char*) ;
 int g_string_append_len (int *,char const*,int) ;
 char* g_string_free (int *,int ) ;
 int * g_string_sized_new (int) ;
 scalar_t__ g_utf8_validate (char const*,int,char const**) ;

char * rofi_force_utf8 ( const gchar *data, ssize_t length )
{
    if ( data == ((void*)0) ) {
        return ((void*)0);
    }
    const char *end;
    GString *string;

    if ( g_utf8_validate ( data, length, &end ) ) {
        return g_memdup ( data, length + 1 );
    }
    string = g_string_sized_new ( length + 16 );

    do {

        g_string_append_len ( string, data, end - data );

        g_string_append ( string, "\uFFFD" );
        length -= ( end - data ) + 1;
        data = end + 1;
    } while ( !g_utf8_validate ( data, length, &end ) );

    if ( length ) {
        g_string_append_len ( string, data, length );
    }

    return g_string_free ( string, FALSE );
}
