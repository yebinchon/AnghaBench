
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* psz_host; scalar_t__ i_port; char* psz_path; } ;
typedef TYPE_1__ vlc_url_t ;
typedef enum tls_mode_e { ____Placeholder_tls_mode_e } tls_mode_e ;


 int IMPLICIT ;
 scalar_t__ IPPORT_FTP ;
 scalar_t__ IPPORT_FTPS ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int assert (int) ;
 int * strchr (char*,char) ;
 char* strstr (char*,char*) ;
 int vlc_UrlParseFixup (TYPE_1__*,char const*) ;
 int vlc_uri_decode (char*) ;

__attribute__((used)) static int parseURL( vlc_url_t *url, const char *path, enum tls_mode_e mode )
{
    if( path == ((void*)0) )
        return VLC_EGENERIC;


    while( *path == '/' )
        path++;

    vlc_UrlParseFixup( url, path );

    if( url->psz_host == ((void*)0) || *url->psz_host == '\0' )
        return VLC_EGENERIC;

    if( url->i_port <= 0 )
    {
        if( mode == IMPLICIT )
            url->i_port = IPPORT_FTPS;
        else
            url->i_port = IPPORT_FTP;
    }

    if( url->psz_path == ((void*)0) )
        return VLC_SUCCESS;



    if( url->psz_path )
    {
        assert( url->psz_path[0] == '/' );
        url->psz_path++;
    }

    char *type = strstr( url->psz_path, ";type=" );
    if( type )
    {
        *type = '\0';
        if( strchr( "iI", type[6] ) == ((void*)0) )
            return VLC_EGENERIC;
    }
    vlc_uri_decode( url->psz_path );
    return VLC_SUCCESS;
}
