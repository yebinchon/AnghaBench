
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int ;
typedef int ngx_uint_t ;
struct TYPE_6__ {int allocated; TYPE_2__* request; scalar_t__ intel; void* free_mem; } ;
typedef TYPE_3__ ngx_http_gzip_ctx_t ;
struct TYPE_5__ {int pool; TYPE_1__* connection; } ;
struct TYPE_4__ {int log; } ;


 int NGX_LOG_ALERT ;
 int NGX_LOG_DEBUG_HTTP ;
 int ngx_http_gzip_assume_intel ;
 int ngx_log_debug4 (int ,int ,int ,char*,int,int,int,void*) ;
 int ngx_log_error (int ,int ,int ,char*,int,int) ;
 void* ngx_palloc (int ,int) ;

__attribute__((used)) static void *
ngx_http_gzip_filter_alloc(void *opaque, u_int items, u_int size)
{
    ngx_http_gzip_ctx_t *ctx = opaque;

    void *p;
    ngx_uint_t alloc;

    alloc = items * size;

    if (items == 1 && alloc % 512 != 0 && alloc < 8192) {






        alloc = 8192;
    }

    if (alloc <= ctx->allocated) {
        p = ctx->free_mem;
        ctx->free_mem += alloc;
        ctx->allocated -= alloc;

        ngx_log_debug4(NGX_LOG_DEBUG_HTTP, ctx->request->connection->log, 0,
                       "gzip alloc: n:%ud s:%ud a:%ui p:%p",
                       items, size, alloc, p);

        return p;
    }

    if (ctx->intel) {
        ngx_log_error(NGX_LOG_ALERT, ctx->request->connection->log, 0,
                      "gzip filter failed to use preallocated memory: "
                      "%ud of %ui", items * size, ctx->allocated);

    } else {
        ngx_http_gzip_assume_intel = 1;
    }

    p = ngx_palloc(ctx->request->pool, items * size);

    return p;
}
