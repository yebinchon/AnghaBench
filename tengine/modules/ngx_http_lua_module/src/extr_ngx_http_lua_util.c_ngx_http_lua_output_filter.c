
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_9__ {int pool; TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_10__ {int busy_bufs; int free_bufs; } ;
typedef TYPE_3__ ngx_http_lua_ctx_t ;
typedef int ngx_chain_t ;
typedef int ngx_buf_tag_t ;
struct TYPE_8__ {TYPE_2__* data; } ;


 scalar_t__ NGX_ERROR ;
 int ngx_chain_update_chains (int ,int ,...) ;
 TYPE_3__* ngx_http_get_module_ctx (TYPE_2__*,int ) ;
 int ngx_http_lua_module ;
 scalar_t__ ngx_http_output_filter (TYPE_2__*,int *) ;

__attribute__((used)) static ngx_int_t
ngx_http_lua_output_filter(ngx_http_request_t *r, ngx_chain_t *in)
{
    ngx_int_t rc;
    ngx_http_lua_ctx_t *ctx;
    ngx_http_request_t *ar;

    ar = r->connection->data;

    if (ar != r) {



        r->connection->data = r;
        rc = ngx_http_output_filter(r, in);
        r->connection->data = ar;
        return rc;
    }

    rc = ngx_http_output_filter(r, in);

    if (rc == NGX_ERROR) {
        return NGX_ERROR;
    }

    ctx = ngx_http_get_module_ctx(r, ngx_http_lua_module);




    ngx_chain_update_chains(

                            &ctx->free_bufs, &ctx->busy_bufs, &in,
                            (ngx_buf_tag_t) &ngx_http_lua_module);

    return rc;
}
