
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IsEscapeNeeded (char const) ;
 char* malloc (size_t) ;
 scalar_t__ unlikely (int) ;

char *config_StringEscape( const char *str )
{
    size_t length = 0;

    if( str == ((void*)0) )
        return ((void*)0);

    for( const char *p = str; *p; p++ )
        length += IsEscapeNeeded( *p ) ? 2 : 1;

    char *ret = malloc( length + 1 ), *dst = ret;

    if( unlikely( !ret ) )
        return ((void*)0);

    for( const char *p = str; *p; p++ )
    {
        if( IsEscapeNeeded( *p ) )
            *dst++ = '\\';
        *dst++ = *p;
    }
    *dst = '\0';;
    return ret;
}
