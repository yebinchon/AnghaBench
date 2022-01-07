
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int u_char ;
typedef int off_t ;
typedef int ngx_int_t ;
struct TYPE_17__ {int len; int data; } ;
struct TYPE_20__ {scalar_t__ status; int content_length_n; TYPE_3__* refresh; TYPE_1__ content_type; } ;
struct TYPE_21__ {int main_filter_need_in_memory; scalar_t__ allow_ranges; TYPE_4__ headers_out; TYPE_2__* connection; int pool; } ;
typedef TYPE_5__ ngx_http_request_t ;
struct TYPE_22__ {size_t length; } ;
typedef TYPE_6__ ngx_http_image_filter_ctx_t ;
struct TYPE_23__ {scalar_t__ filter; size_t buffer_size; } ;
typedef TYPE_7__ ngx_http_image_filter_conf_t ;
struct TYPE_19__ {scalar_t__ hash; } ;
struct TYPE_18__ {int log; } ;


 int NGX_ERROR ;
 scalar_t__ NGX_HTTP_IMAGE_OFF ;
 scalar_t__ NGX_HTTP_NOT_MODIFIED ;
 int NGX_HTTP_UNSUPPORTED_MEDIA_TYPE ;
 int NGX_LOG_ERR ;
 int NGX_OK ;
 TYPE_6__* ngx_http_get_module_ctx (TYPE_5__*,int ) ;
 TYPE_7__* ngx_http_get_module_loc_conf (TYPE_5__*,int ) ;
 int ngx_http_image_filter_module ;
 int ngx_http_next_header_filter (TYPE_5__*) ;
 int ngx_http_set_ctx (TYPE_5__*,TYPE_6__*,int ) ;
 int ngx_log_error (int ,int ,int ,char*,...) ;
 TYPE_6__* ngx_pcalloc (int ,int) ;
 scalar_t__ ngx_strncasecmp (int ,int *,int) ;

__attribute__((used)) static ngx_int_t
ngx_http_image_header_filter(ngx_http_request_t *r)
{
    off_t len;
    ngx_http_image_filter_ctx_t *ctx;
    ngx_http_image_filter_conf_t *conf;

    if (r->headers_out.status == NGX_HTTP_NOT_MODIFIED) {
        return ngx_http_next_header_filter(r);
    }

    ctx = ngx_http_get_module_ctx(r, ngx_http_image_filter_module);

    if (ctx) {
        ngx_http_set_ctx(r, ((void*)0), ngx_http_image_filter_module);
        return ngx_http_next_header_filter(r);
    }

    conf = ngx_http_get_module_loc_conf(r, ngx_http_image_filter_module);

    if (conf->filter == NGX_HTTP_IMAGE_OFF) {
        return ngx_http_next_header_filter(r);
    }

    if (r->headers_out.content_type.len
            >= sizeof("multipart/x-mixed-replace") - 1
        && ngx_strncasecmp(r->headers_out.content_type.data,
                           (u_char *) "multipart/x-mixed-replace",
                           sizeof("multipart/x-mixed-replace") - 1)
           == 0)
    {
        ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                      "image filter: multipart/x-mixed-replace response");

        return NGX_ERROR;
    }

    ctx = ngx_pcalloc(r->pool, sizeof(ngx_http_image_filter_ctx_t));
    if (ctx == ((void*)0)) {
        return NGX_ERROR;
    }

    ngx_http_set_ctx(r, ctx, ngx_http_image_filter_module);

    len = r->headers_out.content_length_n;

    if (len != -1 && len > (off_t) conf->buffer_size) {
        ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                      "image filter: too big response: %O", len);

        return NGX_HTTP_UNSUPPORTED_MEDIA_TYPE;
    }

    if (len == -1) {
        ctx->length = conf->buffer_size;

    } else {
        ctx->length = (size_t) len;
    }

    if (r->headers_out.refresh) {
        r->headers_out.refresh->hash = 0;
    }

    r->main_filter_need_in_memory = 1;
    r->allow_ranges = 0;

    return NGX_OK;
}
