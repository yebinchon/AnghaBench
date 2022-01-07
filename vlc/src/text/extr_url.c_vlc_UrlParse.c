
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * psz_path; } ;
typedef TYPE_1__ vlc_url_t ;


 int EINVAL ;
 int errno ;
 int vlc_UrlParseInner (TYPE_1__*,char const*) ;
 int vlc_uri_path_validate (int *) ;

int vlc_UrlParse(vlc_url_t *url, const char *str)
{
    int ret = vlc_UrlParseInner(url, str);

    if (url->psz_path != ((void*)0) && !vlc_uri_path_validate(url->psz_path))
    {
        url->psz_path = ((void*)0);
        errno = EINVAL;
        ret = -1;
    }
    return ret;
}
