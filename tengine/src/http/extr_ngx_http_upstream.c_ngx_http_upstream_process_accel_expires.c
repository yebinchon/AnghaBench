
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef char u_char ;
typedef int ngx_uint_t ;
struct TYPE_12__ {size_t len; char* data; } ;
struct TYPE_14__ {TYPE_3__ value; } ;
typedef TYPE_5__ ngx_table_elt_t ;
typedef int ngx_int_t ;
struct TYPE_10__ {TYPE_5__* x_accel_expires; } ;
struct TYPE_15__ {int cacheable; TYPE_2__* conf; TYPE_1__ headers_in; } ;
typedef TYPE_6__ ngx_http_upstream_t ;
struct TYPE_16__ {TYPE_4__* cache; TYPE_6__* upstream; } ;
typedef TYPE_7__ ngx_http_request_t ;
struct TYPE_13__ {int valid_sec; } ;
struct TYPE_11__ {int ignore_headers; } ;



 int NGX_HTTP_UPSTREAM_IGN_XA_EXPIRES ;
 int NGX_OK ;
 int ngx_atoi (char*,size_t) ;
 int ngx_time () ;

__attribute__((used)) static ngx_int_t
ngx_http_upstream_process_accel_expires(ngx_http_request_t *r,
    ngx_table_elt_t *h, ngx_uint_t offset)
{
    ngx_http_upstream_t *u;

    u = r->upstream;
    u->headers_in.x_accel_expires = h;
    return NGX_OK;
}
