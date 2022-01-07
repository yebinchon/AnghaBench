
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ expires; int * trailers; int * headers; int expires_value; int expires_time; } ;
typedef TYPE_1__ ngx_http_headers_conf_t ;
typedef int ngx_conf_t ;


 char* NGX_CONF_OK ;
 scalar_t__ NGX_HTTP_EXPIRES_OFF ;
 scalar_t__ NGX_HTTP_EXPIRES_UNSET ;

__attribute__((used)) static char *
ngx_http_headers_merge_conf(ngx_conf_t *cf, void *parent, void *child)
{
    ngx_http_headers_conf_t *prev = parent;
    ngx_http_headers_conf_t *conf = child;

    if (conf->expires == NGX_HTTP_EXPIRES_UNSET) {
        conf->expires = prev->expires;
        conf->expires_time = prev->expires_time;
        conf->expires_value = prev->expires_value;

        if (conf->expires == NGX_HTTP_EXPIRES_UNSET) {
            conf->expires = NGX_HTTP_EXPIRES_OFF;
        }
    }

    if (conf->headers == ((void*)0)) {
        conf->headers = prev->headers;
    }

    if (conf->trailers == ((void*)0)) {
        conf->trailers = prev->trailers;
    }

    return NGX_CONF_OK;
}
