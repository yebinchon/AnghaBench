
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ngx_uint_t ;
struct TYPE_11__ {int value; } ;
typedef TYPE_4__ ngx_table_elt_t ;
typedef int ngx_int_t ;
struct TYPE_10__ {int * override_charset; } ;
struct TYPE_12__ {TYPE_3__ headers_out; TYPE_2__* upstream; } ;
typedef TYPE_5__ ngx_http_request_t ;
struct TYPE_9__ {TYPE_1__* conf; } ;
struct TYPE_8__ {int ignore_headers; } ;


 int NGX_HTTP_UPSTREAM_IGN_XA_CHARSET ;
 int NGX_OK ;

__attribute__((used)) static ngx_int_t
ngx_http_upstream_process_charset(ngx_http_request_t *r, ngx_table_elt_t *h,
    ngx_uint_t offset)
{
    if (r->upstream->conf->ignore_headers & NGX_HTTP_UPSTREAM_IGN_XA_CHARSET) {
        return NGX_OK;
    }

    r->headers_out.override_charset = &h->value;

    return NGX_OK;
}
