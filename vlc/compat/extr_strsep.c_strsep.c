
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strpbrk (char*,char const*) ;

char *strsep( char **ppsz_string, const char *psz_delimiters )
{
    char *psz_string = *ppsz_string;
    if( !psz_string )
        return ((void*)0);

    char *p = strpbrk( psz_string, psz_delimiters );
    if( !p )
    {
        *ppsz_string = ((void*)0);
        return psz_string;
    }
    *p++ = '\0';

    *ppsz_string = p;
    return psz_string;
}
