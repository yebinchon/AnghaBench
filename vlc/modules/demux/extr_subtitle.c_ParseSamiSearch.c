
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text_t ;


 char* TextGetLine (int *) ;
 char* strcasestr (char const*,char const*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static const char *ParseSamiSearch( text_t *txt,
                                    const char *psz_start, const char *psz_str )
{
    if( psz_start && strcasestr( psz_start, psz_str ) )
    {
        const char *s = strcasestr( psz_start, psz_str );
        return &s[strlen( psz_str )];
    }

    for( ;; )
    {
        const char *p = TextGetLine( txt );
        if( !p )
            return ((void*)0);

        const char *s = strcasestr( p, psz_str );
        if( s != ((void*)0) )
            return &s[strlen( psz_str )];
    }
}
