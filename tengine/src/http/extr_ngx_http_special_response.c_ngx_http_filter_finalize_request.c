
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {size_t ctx_index; } ;
typedef TYPE_1__ ngx_module_t ;
typedef int ngx_int_t ;
struct TYPE_8__ {int filter_finalize; void** ctx; } ;
typedef TYPE_2__ ngx_http_request_t ;



 int NGX_ERROR ;

 int ngx_http_clean_header (TYPE_2__*) ;
 int ngx_http_max_module ;
 int ngx_http_special_response_handler (TYPE_2__*,int) ;
 int ngx_memzero (void**,int) ;

ngx_int_t
ngx_http_filter_finalize_request(ngx_http_request_t *r, ngx_module_t *m,
    ngx_int_t error)
{
    void *ctx;
    ngx_int_t rc;

    ngx_http_clean_header(r);

    ctx = ((void*)0);

    if (m) {
        ctx = r->ctx[m->ctx_index];
    }


    ngx_memzero(r->ctx, sizeof(void *) * ngx_http_max_module);

    if (m) {
        r->ctx[m->ctx_index] = ctx;
    }

    r->filter_finalize = 1;

    rc = ngx_http_special_response_handler(r, error);



    switch (rc) {

    case 128:
    case 129:
        return NGX_ERROR;

    default:
        return rc;
    }
}
