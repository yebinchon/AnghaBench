
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* psz_host; char const* psz_username; char const* psz_password; char* psz_path; int * psz_option; int i_port; int * psz_protocol; } ;
typedef TYPE_1__ vlc_url_t ;
struct vlc_http_resource_cbs {int dummy; } ;
struct vlc_http_resource {int secure; int negotiate; int failure; int * path; int * authority; int * host; struct vlc_http_mgr* manager; int * referrer; int * agent; int * password; int * username; int port; int * response; struct vlc_http_resource_cbs const* cbs; } ;
struct vlc_http_mgr {int dummy; } ;


 int EINVAL ;
 int ENOTSUP ;
 int asprintf (int **,char*,char const*,int *) ;
 int errno ;
 int * strdup (char const*) ;
 scalar_t__ unlikely (int) ;
 int vlc_UrlClean (TYPE_1__*) ;
 scalar_t__ vlc_UrlParse (TYPE_1__*,char const*) ;
 int vlc_ascii_strcasecmp (int *,char*) ;
 int * vlc_http_authority (char const*,int ) ;
 int vlc_http_res_deinit (struct vlc_http_resource*) ;

int vlc_http_res_init(struct vlc_http_resource *restrict res,
                      const struct vlc_http_resource_cbs *cbs,
                      struct vlc_http_mgr *mgr,
                      const char *uri, const char *ua, const char *ref)
{
    vlc_url_t url;
    bool secure;

    if (vlc_UrlParse(&url, uri))
        goto error;
    if (url.psz_protocol == ((void*)0) || url.psz_host == ((void*)0))
    {
        errno = EINVAL;
        goto error;
    }

    if (!vlc_ascii_strcasecmp(url.psz_protocol, "https"))
        secure = 1;
    else if (!vlc_ascii_strcasecmp(url.psz_protocol, "http"))
        secure = 0;
    else
    {
        errno = ENOTSUP;
        goto error;
    }

    res->cbs = cbs;
    res->response = ((void*)0);
    res->secure = secure;
    res->negotiate = 1;
    res->failure = 0;
    res->host = strdup(url.psz_host);
    res->port = url.i_port;
    res->authority = vlc_http_authority(url.psz_host, url.i_port);
    res->username = (url.psz_username != ((void*)0)) ? strdup(url.psz_username)
                                               : ((void*)0);
    res->password = (url.psz_password != ((void*)0)) ? strdup(url.psz_password)
                                               : ((void*)0);
    res->agent = (ua != ((void*)0)) ? strdup(ua) : ((void*)0);
    res->referrer = (ref != ((void*)0)) ? strdup(ref) : ((void*)0);

    const char *path = url.psz_path;
    if (path == ((void*)0))
        path = "/";

    if (url.psz_option != ((void*)0))
    {
        if (asprintf(&res->path, "%s?%s", path, url.psz_option) == -1)
            res->path = ((void*)0);
    }
    else
        res->path = strdup(path);

    vlc_UrlClean(&url);
    res->manager = mgr;

    if (unlikely(res->host == ((void*)0) || res->authority == ((void*)0)
              || res->path == ((void*)0)))
    {
        vlc_http_res_deinit(res);
        return -1;
    }
    return 0;
error:
    vlc_UrlClean(&url);
    return -1;
}
