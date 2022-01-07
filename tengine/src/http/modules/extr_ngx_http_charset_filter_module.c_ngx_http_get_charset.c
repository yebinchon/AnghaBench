
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
struct TYPE_10__ {int len; int data; } ;
typedef TYPE_3__ ngx_str_t ;
typedef size_t ngx_int_t ;
typedef int ngx_http_request_t ;
struct TYPE_8__ {int data; int len; } ;
struct TYPE_11__ {TYPE_1__ name; } ;
typedef TYPE_4__ ngx_http_charset_t ;
struct TYPE_9__ {size_t nelts; TYPE_4__* elts; } ;
struct TYPE_12__ {TYPE_2__ charsets; } ;
typedef TYPE_5__ ngx_http_charset_main_conf_t ;


 size_t NGX_HTTP_NO_CHARSET ;
 int ngx_http_charset_filter_module ;
 TYPE_5__* ngx_http_get_module_main_conf (int *,int ) ;
 scalar_t__ ngx_strncasecmp (int ,int ,int ) ;

__attribute__((used)) static ngx_int_t
ngx_http_get_charset(ngx_http_request_t *r, ngx_str_t *name)
{
    ngx_uint_t i, n;
    ngx_http_charset_t *charset;
    ngx_http_charset_main_conf_t *mcf;

    mcf = ngx_http_get_module_main_conf(r, ngx_http_charset_filter_module);

    charset = mcf->charsets.elts;
    n = mcf->charsets.nelts;

    for (i = 0; i < n; i++) {
        if (charset[i].name.len != name->len) {
            continue;
        }

        if (ngx_strncasecmp(charset[i].name.data, name->data, name->len) == 0) {
            return i;
        }
    }

    return NGX_HTTP_NO_CHARSET;
}
