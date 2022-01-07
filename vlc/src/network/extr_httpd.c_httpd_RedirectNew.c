
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int url; int dst; } ;
typedef TYPE_1__ httpd_redirect_t ;
typedef int httpd_host_t ;
typedef int httpd_callback_sys_t ;


 int HTTPD_MSG_DESCRIBE ;
 int HTTPD_MSG_GET ;
 int HTTPD_MSG_HEAD ;
 int HTTPD_MSG_POST ;
 int free (TYPE_1__*) ;
 int httpd_RedirectCallBack ;
 int httpd_UrlCatch (int ,int ,int ,int *) ;
 int httpd_UrlNew (int *,char const*,int *,int *) ;
 TYPE_1__* malloc (int) ;
 int memcpy (int ,char const*,size_t) ;
 size_t strlen (char const*) ;
 scalar_t__ unlikely (int ) ;

httpd_redirect_t *httpd_RedirectNew(httpd_host_t *host, const char *psz_url_dst,
                                     const char *psz_url_src)
{
    size_t dstlen = strlen(psz_url_dst);

    httpd_redirect_t *rdir = malloc(sizeof(*rdir) + dstlen);
    if (unlikely(rdir == ((void*)0)))
        return ((void*)0);

    rdir->url = httpd_UrlNew(host, psz_url_src, ((void*)0), ((void*)0));
    if (!rdir->url) {
        free(rdir);
        return ((void*)0);
    }
    memcpy(rdir->dst, psz_url_dst, dstlen + 1);


    httpd_UrlCatch(rdir->url, HTTPD_MSG_HEAD, httpd_RedirectCallBack,
                    (httpd_callback_sys_t*)rdir);
    httpd_UrlCatch(rdir->url, HTTPD_MSG_GET, httpd_RedirectCallBack,
                    (httpd_callback_sys_t*)rdir);
    httpd_UrlCatch(rdir->url, HTTPD_MSG_POST, httpd_RedirectCallBack,
                    (httpd_callback_sys_t*)rdir);
    httpd_UrlCatch(rdir->url, HTTPD_MSG_DESCRIBE, httpd_RedirectCallBack,
                    (httpd_callback_sys_t*)rdir);

    return rdir;
}
