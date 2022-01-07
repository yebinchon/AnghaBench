
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
struct TYPE_9__ {int len; int data; } ;
struct TYPE_10__ {TYPE_2__ value; } ;
typedef TYPE_3__ ngx_table_elt_t ;
typedef int ngx_int_t ;
struct TYPE_8__ {int last_modified_time; TYPE_3__* last_modified; } ;
struct TYPE_11__ {TYPE_1__ headers_in; } ;
typedef TYPE_4__ ngx_http_upstream_t ;
struct TYPE_12__ {TYPE_4__* upstream; } ;
typedef TYPE_5__ ngx_http_request_t ;


 int NGX_OK ;
 int ngx_parse_http_time (int ,int ) ;

__attribute__((used)) static ngx_int_t
ngx_http_upstream_process_last_modified(ngx_http_request_t *r,
    ngx_table_elt_t *h, ngx_uint_t offset)
{
    ngx_http_upstream_t *u;

    u = r->upstream;

    u->headers_in.last_modified = h;
    u->headers_in.last_modified_time = ngx_parse_http_time(h->value.data,
                                                           h->value.len);

    return NGX_OK;
}
