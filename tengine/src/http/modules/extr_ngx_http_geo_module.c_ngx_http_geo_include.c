
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int len; char* data; } ;
typedef TYPE_1__ ngx_str_t ;
struct TYPE_15__ {scalar_t__ outside_entries; int includes; scalar_t__ allow_binary_include; TYPE_1__ include_name; scalar_t__ ranges; int temp_pool; } ;
typedef TYPE_2__ ngx_http_geo_conf_ctx_t ;
struct TYPE_16__ {int log; int cycle; } ;
typedef TYPE_3__ ngx_conf_t ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;

 int NGX_LOG_DEBUG_CORE ;

 scalar_t__ ngx_conf_full_name (int ,TYPE_1__*,int) ;
 char* ngx_conf_parse (TYPE_3__*,TYPE_1__*) ;
 int ngx_http_geo_include_binary_base (TYPE_3__*,TYPE_2__*,TYPE_1__*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,char*) ;
 char* ngx_pnalloc (int ,int) ;
 int ngx_sprintf (char*,char*,TYPE_1__*) ;

__attribute__((used)) static char *
ngx_http_geo_include(ngx_conf_t *cf, ngx_http_geo_conf_ctx_t *ctx,
    ngx_str_t *name)
{
    char *rv;
    ngx_str_t file;

    file.len = name->len + 4;
    file.data = ngx_pnalloc(ctx->temp_pool, name->len + 5);
    if (file.data == ((void*)0)) {
        return NGX_CONF_ERROR;
    }

    ngx_sprintf(file.data, "%V.bin%Z", name);

    if (ngx_conf_full_name(cf->cycle, &file, 1) != 128) {
        return NGX_CONF_ERROR;
    }

    if (ctx->ranges) {
        ngx_log_debug1(NGX_LOG_DEBUG_CORE, cf->log, 0, "include %s", file.data);

        switch (ngx_http_geo_include_binary_base(cf, ctx, &file)) {
        case 128:
            return NGX_CONF_OK;
        case 129:
            return NGX_CONF_ERROR;
        default:
            break;
        }
    }

    file.len -= 4;
    file.data[file.len] = '\0';

    ctx->include_name = file;

    if (ctx->outside_entries) {
        ctx->allow_binary_include = 0;
    }

    ngx_log_debug1(NGX_LOG_DEBUG_CORE, cf->log, 0, "include %s", file.data);

    rv = ngx_conf_parse(cf, &file);

    ctx->includes++;
    ctx->outside_entries = 0;

    return rv;
}
