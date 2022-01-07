
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IsEscape (char*) ;

char *config_StringUnescape( char *psz_string )
{
    char *psz_src = psz_string;
    char *psz_dst = psz_string;
    if( !psz_src )
        return ((void*)0);

    while( *psz_src )
    {
        if( IsEscape( psz_src ) )
            psz_src++;
        *psz_dst++ = *psz_src++;
    }
    *psz_dst = '\0';

    return psz_string;
}
