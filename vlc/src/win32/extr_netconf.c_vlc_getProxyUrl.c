
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* psz_password; } ;
typedef TYPE_1__ vlc_url_t ;
typedef int key ;
typedef int HKEY ;
typedef int DWORD ;
typedef unsigned char BYTE ;


 scalar_t__ ERROR_SUCCESS ;
 int HKEY_CURRENT_USER ;
 int KEY_READ ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyEx (int ,char*,int ,int ,int *) ;
 scalar_t__ RegQueryValueEx (int ,char*,int *,int *,unsigned char*,int*) ;
 int VLC_UNUSED (char const*) ;
 char* config_GetPsz (char*) ;
 int free (char*) ;
 char* strchr (char*,char) ;
 char* strdup (char*) ;
 char* strstr (char*,char*) ;
 int vlc_UrlClean (TYPE_1__*) ;
 scalar_t__ vlc_UrlParse (TYPE_1__*,char*) ;
 char* vlc_uri_compose (TYPE_1__*) ;

char *vlc_getProxyUrl(const char *psz_url)
{
    VLC_UNUSED(psz_url);

    char *proxy = config_GetPsz( "http-proxy" );
    if (proxy == ((void*)0))
        return ((void*)0);

    char *proxy_pwd = config_GetPsz( "http-proxy-pwd" );
    if (proxy_pwd == ((void*)0))
        return proxy;

    vlc_url_t url;
    if (vlc_UrlParse(&url, proxy) < 0) {
        vlc_UrlClean(&url);
        free (proxy);
        free (proxy_pwd);
        return ((void*)0);
    }

    if (url.psz_password == ((void*)0) )
        url.psz_password = proxy_pwd;

    char *proxy_url = vlc_uri_compose (&url);
    vlc_UrlClean (&url);

    free (proxy_pwd);
    free (proxy);
    return proxy_url;
}
