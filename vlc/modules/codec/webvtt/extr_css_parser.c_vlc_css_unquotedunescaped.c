
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vlc_css_unescape (char*) ;
 char* vlc_css_unquoted (char const*) ;

char * vlc_css_unquotedunescaped( const char *psz )
{
    char *psz_ret = vlc_css_unquoted( psz );
    if( psz_ret )
        vlc_css_unescape( psz_ret );
    return psz_ret;
}
