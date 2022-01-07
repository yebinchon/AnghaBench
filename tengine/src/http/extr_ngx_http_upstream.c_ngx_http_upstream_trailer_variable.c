
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ngx_str_t ;
typedef int ngx_int_t ;
struct TYPE_12__ {int not_found; } ;
typedef TYPE_4__ ngx_http_variable_value_t ;
struct TYPE_13__ {TYPE_3__* upstream; } ;
typedef TYPE_5__ ngx_http_request_t ;
struct TYPE_9__ {int part; } ;
struct TYPE_10__ {TYPE_1__ trailers; } ;
struct TYPE_11__ {TYPE_2__ headers_in; } ;


 int NGX_OK ;
 int ngx_http_variable_unknown_header (TYPE_4__*,int *,int *,int) ;

__attribute__((used)) static ngx_int_t
ngx_http_upstream_trailer_variable(ngx_http_request_t *r,
    ngx_http_variable_value_t *v, uintptr_t data)
{
    if (r->upstream == ((void*)0)) {
        v->not_found = 1;
        return NGX_OK;
    }

    return ngx_http_variable_unknown_header(v, (ngx_str_t *) data,
                                        &r->upstream->headers_in.trailers.part,
                                        sizeof("upstream_trailer_") - 1);
}
