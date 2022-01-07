
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * psz_path; int * psz_pathbuffer; } ;
typedef TYPE_1__ vlc_url_t ;


 int ENOMEM ;
 int assert (int ) ;
 int errno ;
 int vlc_UrlParseInner (TYPE_1__*,char const*) ;
 int vlc_uri_component_validate (int *,char const*) ;
 int * vlc_uri_fixup_inner (int *,char const*) ;
 int vlc_uri_path_validate (int *) ;

int vlc_UrlParseFixup(vlc_url_t *url, const char *str)
{
    int ret = vlc_UrlParseInner(url, str);

    static const char pathextras[] = "/@:";

    if (url->psz_path != ((void*)0)
     && !vlc_uri_component_validate(url->psz_path, pathextras))
    {
        url->psz_pathbuffer = vlc_uri_fixup_inner(url->psz_path, pathextras);
        if (url->psz_pathbuffer == ((void*)0))
        {
            url->psz_path = ((void*)0);
            errno = ENOMEM;
            ret = -1;
        }
        else
        {
            url->psz_path = url->psz_pathbuffer;
            assert(vlc_uri_path_validate(url->psz_path));
        }
    }
    return ret;
}
