
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strdup (char const*) ;
 size_t strlen (char const*) ;
 char* strndup (char const*,size_t) ;

char * vlc_css_unquoted( const char *psz )
{
    char *psz_ret;
    if( *psz == '\'' || *psz == '\"' )
    {
        size_t i_len = strlen(psz);
        if( psz[i_len - 1] == psz[0] )
            psz_ret = strndup( psz + 1, i_len - 2 );
        else
            psz_ret = strdup( psz );
    }
    else
    {
        psz_ret = strdup( psz );
    }
    return psz_ret;
}
