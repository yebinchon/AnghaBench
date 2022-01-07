
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strdup (char const*) ;
 int vlc_css_unescape (char*) ;

char * vlc_css_unescaped( const char *psz )
{
    char *psz_ret = strdup( psz );
    vlc_css_unescape( psz_ret );
    return psz_ret;
}
