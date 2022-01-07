
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int content_length_n; } ;
struct TYPE_10__ {TYPE_1__ headers_out; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_11__ {int wbits; int memlevel; int allocated; int intel; } ;
typedef TYPE_3__ ngx_http_gzip_ctx_t ;
struct TYPE_12__ {int wbits; int memlevel; int level; } ;
typedef TYPE_4__ ngx_http_gzip_conf_t ;


 TYPE_4__* ngx_http_get_module_loc_conf (TYPE_2__*,int ) ;
 int ngx_http_gzip_assume_intel ;
 int ngx_http_gzip_filter_module ;
 int ngx_max (int,int) ;

__attribute__((used)) static void
ngx_http_gzip_filter_memory(ngx_http_request_t *r, ngx_http_gzip_ctx_t *ctx)
{
    int wbits, memlevel;
    ngx_http_gzip_conf_t *conf;

    conf = ngx_http_get_module_loc_conf(r, ngx_http_gzip_filter_module);

    wbits = conf->wbits;
    memlevel = conf->memlevel;

    if (r->headers_out.content_length_n > 0) {



        while (r->headers_out.content_length_n < ((1 << (wbits - 1)) - 262)) {
            wbits--;
            memlevel--;
        }

        if (memlevel < 1) {
            memlevel = 1;
        }
    }

    ctx->wbits = wbits;
    ctx->memlevel = memlevel;
    if (!ngx_http_gzip_assume_intel) {
        ctx->allocated = 8192 + (1 << (wbits + 2)) + (1 << (memlevel + 9));

    } else {
        if (conf->level == 1) {
            wbits = ngx_max(wbits, 13);
        }

        ctx->allocated = 8192 + 16 + (1 << (wbits + 2))
                         + (1 << (ngx_max(memlevel, 8) + 8))
                         + (1 << (memlevel + 8));
        ctx->intel = 1;
    }
}
