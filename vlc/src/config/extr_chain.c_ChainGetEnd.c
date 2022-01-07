
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IsEscape (char const*) ;
 int SKIPSPACE (char const*) ;

__attribute__((used)) static const char *ChainGetEnd( const char *psz_string )
{
    const char *p = psz_string;
    char c;

    if( !psz_string )
        return ((void*)0);


    SKIPSPACE( p );

    for( ;; p++)
    {
        if( *p == '\0' || *p == ',' || *p == '}' )
            return p;

        if( *p == '{' || *p == '"' || *p == '\'' )
            break;
    }


    if( *p == '{' )
        c = '}';
    else
        c = *p;
    p++;


    for( ;; )
    {
        if( *p == '\0')
            return p;

        if( IsEscape( p ) )
            p += 2;
        else if( *p == c )
            return ++p;
        else if( *p == '{' && c == '}' )
            p = ChainGetEnd( p );
        else
            p++;
    }
}
