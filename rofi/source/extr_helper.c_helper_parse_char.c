
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_warning (char*,char const*) ;
 size_t strlen (char const*) ;
 scalar_t__ strtol (char const*,int *,int) ;

char helper_parse_char ( const char *arg )
{
    const size_t len = strlen ( arg );

    if ( len == 1 ) {
        return arg[0];
    }

    if ( len == 2 && arg[0] == '\\' ) {
        switch ( arg[1] )
        {

        case 'n': return '\n';

        case 'a': return '\a';

        case 'b': return '\b';

        case 't': return '\t';

        case 'v': return '\v';

        case 'f': return '\f';

        case 'r': return '\r';

        case '\\': return '\\';

        case '0': return '\0';
        default:
            break;
        }
    }
    if ( len > 2 && arg[0] == '\\' && arg[1] == 'x' ) {
        return (char) strtol ( &arg[2], ((void*)0), 16 );
    }
    g_warning ( "Failed to parse character string: \"%s\"", arg );

    return '\n';
}
