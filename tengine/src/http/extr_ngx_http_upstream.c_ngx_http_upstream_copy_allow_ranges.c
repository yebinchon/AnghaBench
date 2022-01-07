
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ngx_uint_t ;
typedef int ngx_table_elt_t ;
typedef int ngx_int_t ;
struct TYPE_6__ {int * accept_ranges; int headers; } ;
struct TYPE_9__ {int allow_ranges; int single_range; TYPE_1__ headers_out; TYPE_3__* upstream; scalar_t__ cached; } ;
typedef TYPE_4__ ngx_http_request_t ;
struct TYPE_8__ {scalar_t__ cacheable; TYPE_2__* conf; } ;
struct TYPE_7__ {scalar_t__ force_ranges; } ;


 int NGX_ERROR ;
 int NGX_OK ;
 int * ngx_list_push (int *) ;

__attribute__((used)) static ngx_int_t
ngx_http_upstream_copy_allow_ranges(ngx_http_request_t *r,
    ngx_table_elt_t *h, ngx_uint_t offset)
{
    ngx_table_elt_t *ho;

    if (r->upstream->conf->force_ranges) {
        return NGX_OK;
    }
    ho = ngx_list_push(&r->headers_out.headers);
    if (ho == ((void*)0)) {
        return NGX_ERROR;
    }

    *ho = *h;

    r->headers_out.accept_ranges = ho;

    return NGX_OK;
}
