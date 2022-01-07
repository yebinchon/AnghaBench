
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int u_char ;
typedef int ngx_uint_t ;
struct TYPE_14__ {int len; int * data; } ;
typedef TYPE_3__ ngx_str_t ;
typedef int ngx_http_geo_range_t ;
struct TYPE_13__ {int * low; int * default_value; } ;
struct TYPE_12__ {TYPE_3__* data; } ;
struct TYPE_15__ {int outside_entries; TYPE_3__* net; int * value; int entries; TYPE_2__ high; int pool; TYPE_1__ include_name; scalar_t__ binary_include; } ;
typedef TYPE_4__ ngx_http_geo_conf_ctx_t ;
typedef int ngx_conf_t ;
typedef scalar_t__ in_addr_t ;


 scalar_t__ INADDR_NONE ;
 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 int NGX_LOG_EMERG ;
 int NGX_LOG_WARN ;
 int ngx_conf_log_error (int ,int *,int ,char*,TYPE_3__*,...) ;
 char* ngx_http_geo_add_range (int *,TYPE_4__*,scalar_t__,scalar_t__) ;
 scalar_t__ ngx_http_geo_delete_range (int *,TYPE_4__*,scalar_t__,scalar_t__) ;
 void* ngx_http_geo_value (int *,TYPE_4__*,TYPE_3__*) ;
 scalar_t__ ngx_inet_addr (int *,int) ;
 int * ngx_pcalloc (int ,int) ;
 scalar_t__ ngx_strcmp (int *,char*) ;
 int * ngx_strlchr (int *,int *,char) ;
 scalar_t__ ntohl (scalar_t__) ;

__attribute__((used)) static char *
ngx_http_geo_range(ngx_conf_t *cf, ngx_http_geo_conf_ctx_t *ctx,
    ngx_str_t *value)
{
    u_char *p, *last;
    in_addr_t start, end;
    ngx_str_t *net;
    ngx_uint_t del;

    if (ngx_strcmp(value[0].data, "default") == 0) {

        if (ctx->high.default_value) {
            ngx_conf_log_error(NGX_LOG_WARN, cf, 0,
                "duplicate default geo range value: \"%V\", old value: \"%v\"",
                &value[1], ctx->high.default_value);
        }

        ctx->high.default_value = ngx_http_geo_value(cf, ctx, &value[1]);
        if (ctx->high.default_value == ((void*)0)) {
            return NGX_CONF_ERROR;
        }

        return NGX_CONF_OK;
    }

    if (ctx->binary_include) {
        ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
            "binary geo range base \"%s\" cannot be mixed with usual entries",
            ctx->include_name.data);
        return NGX_CONF_ERROR;
    }

    if (ctx->high.low == ((void*)0)) {
        ctx->high.low = ngx_pcalloc(ctx->pool,
                                    0x10000 * sizeof(ngx_http_geo_range_t *));
        if (ctx->high.low == ((void*)0)) {
            return NGX_CONF_ERROR;
        }
    }

    ctx->entries++;
    ctx->outside_entries = 1;

    if (ngx_strcmp(value[0].data, "delete") == 0) {
        net = &value[1];
        del = 1;

    } else {
        net = &value[0];
        del = 0;
    }

    last = net->data + net->len;

    p = ngx_strlchr(net->data, last, '-');

    if (p == ((void*)0)) {
        goto invalid;
    }

    start = ngx_inet_addr(net->data, p - net->data);

    if (start == INADDR_NONE) {
        goto invalid;
    }

    start = ntohl(start);

    p++;

    end = ngx_inet_addr(p, last - p);

    if (end == INADDR_NONE) {
        goto invalid;
    }

    end = ntohl(end);

    if (start > end) {
        goto invalid;
    }

    if (del) {
        if (ngx_http_geo_delete_range(cf, ctx, start, end)) {
            ngx_conf_log_error(NGX_LOG_WARN, cf, 0,
                               "no address range \"%V\" to delete", net);
        }

        return NGX_CONF_OK;
    }

    ctx->value = ngx_http_geo_value(cf, ctx, &value[1]);

    if (ctx->value == ((void*)0)) {
        return NGX_CONF_ERROR;
    }

    ctx->net = net;

    return ngx_http_geo_add_range(cf, ctx, start, end);

invalid:

    ngx_conf_log_error(NGX_LOG_EMERG, cf, 0, "invalid range \"%V\"", net);

    return NGX_CONF_ERROR;
}
