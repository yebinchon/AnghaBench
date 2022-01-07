
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef char u_char ;
typedef int ngx_int_t ;
struct TYPE_12__ {int version; } ;
typedef TYPE_2__ ngx_http_tfs_restful_ctx_t ;
struct TYPE_14__ {char* data; int len; } ;
struct TYPE_13__ {TYPE_4__ uri; TYPE_1__* connection; } ;
typedef TYPE_3__ ngx_http_request_t ;
struct TYPE_11__ {int log; } ;


 int NGX_ERROR ;
 int NGX_LOG_DEBUG_HTTP ;
 int ngx_http_restful_parse_custom_name (TYPE_3__*,TYPE_2__*,char*) ;
 int ngx_http_restful_parse_raw (TYPE_3__*,TYPE_2__*,char*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,TYPE_4__*) ;

__attribute__((used)) static ngx_int_t
ngx_http_restful_parse_uri(ngx_http_request_t *r,
    ngx_http_tfs_restful_ctx_t *ctx)
{
    u_char *p, ch, *last;

    enum {
        sw_start = 0,
        sw_version_prefix,
        sw_version,
        sw_backslash,
    } state;

    state = sw_start;
    last = r->uri.data + r->uri.len;

    for (p = r->uri.data; p < last; p++) {
        ch = *p;

        switch (state) {
        case sw_start:
            state = sw_version_prefix;
            break;
        case sw_version_prefix:
            if (ch != 'v') {
                ngx_log_debug1(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                               "version invalid %V ", &r->uri);
                return NGX_ERROR;
            }
            state = sw_version;
            break;

        case sw_version:
            if (ch < '1' || ch > '9') {
                return NGX_ERROR;
            }

            ctx->version = ch - '0';
            if (ctx->version > 2) {
                return NGX_ERROR;
            }

            state = sw_backslash;
            break;

        case sw_backslash:
            if (ch != '/') {
                return NGX_ERROR;
            }

            if (ctx->version == 1) {
                return ngx_http_restful_parse_raw(r, ctx, ++p);
            }

            if (ctx->version == 2) {
                return ngx_http_restful_parse_custom_name(r, ctx, ++p);
            }

            return NGX_ERROR;
        }
    }

    return NGX_ERROR;
}
