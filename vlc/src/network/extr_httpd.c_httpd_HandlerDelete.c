
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int url; void* p_sys; } ;
typedef TYPE_1__ httpd_handler_t ;


 int free (TYPE_1__*) ;
 int httpd_UrlDelete (int ) ;

void *httpd_HandlerDelete(httpd_handler_t *handler)
{
    void *p_sys = handler->p_sys;
    httpd_UrlDelete(handler->url);
    free(handler);
    return p_sys;
}
