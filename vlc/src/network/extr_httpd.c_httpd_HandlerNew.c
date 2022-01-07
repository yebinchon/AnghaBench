
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int httpd_host_t ;
struct TYPE_5__ {int url; void* p_sys; int pf_fill; } ;
typedef TYPE_1__ httpd_handler_t ;
typedef int httpd_handler_callback_t ;
typedef int httpd_callback_sys_t ;


 int HTTPD_MSG_GET ;
 int HTTPD_MSG_HEAD ;
 int HTTPD_MSG_POST ;
 int free (TYPE_1__*) ;
 int httpd_HandlerCallBack ;
 int httpd_UrlCatch (int ,int ,int ,int *) ;
 int httpd_UrlNew (int *,char const*,char const*,char const*) ;
 TYPE_1__* malloc (int) ;

httpd_handler_t *httpd_HandlerNew(httpd_host_t *host, const char *psz_url,
                                  const char *psz_user,
                                  const char *psz_password,
                                  httpd_handler_callback_t pf_fill,
                                  void *p_sys)
{
    httpd_handler_t *handler = malloc(sizeof(*handler));
    if (!handler)
        return ((void*)0);

    handler->url = httpd_UrlNew(host, psz_url, psz_user, psz_password);
    if (!handler->url) {
        free(handler);
        return ((void*)0);
    }

    handler->pf_fill = pf_fill;
    handler->p_sys = p_sys;

    httpd_UrlCatch(handler->url, HTTPD_MSG_HEAD, httpd_HandlerCallBack,
                    (httpd_callback_sys_t*)handler);
    httpd_UrlCatch(handler->url, HTTPD_MSG_GET, httpd_HandlerCallBack,
                    (httpd_callback_sys_t*)handler);
    httpd_UrlCatch(handler->url, HTTPD_MSG_POST, httpd_HandlerCallBack,
                    (httpd_callback_sys_t*)handler);

    return handler;
}
