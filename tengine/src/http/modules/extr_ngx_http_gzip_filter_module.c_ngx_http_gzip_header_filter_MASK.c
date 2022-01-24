#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_7__ ;
typedef  struct TYPE_29__   TYPE_6__ ;
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
struct TYPE_30__ {scalar_t__ len; } ;
struct TYPE_25__ {int hash; TYPE_7__ value; TYPE_7__ key; } ;
typedef  TYPE_2__ ngx_table_elt_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_24__ {scalar_t__ status; int content_length_n; TYPE_2__* content_encoding; int /*<<< orphan*/  headers; } ;
struct TYPE_26__ {int gzip_vary; int main_filter_need_in_memory; TYPE_1__ headers_out; int /*<<< orphan*/  pool; int /*<<< orphan*/  gzip_ok; int /*<<< orphan*/  gzip_tested; scalar_t__ header_only; } ;
typedef  TYPE_3__ ngx_http_request_t ;
struct TYPE_27__ {int buffering; TYPE_3__* request; } ;
typedef  TYPE_4__ ngx_http_gzip_ctx_t ;
struct TYPE_28__ {int min_length; scalar_t__ postpone_gzipping; scalar_t__ clear_etag; int /*<<< orphan*/  types; int /*<<< orphan*/  enable; } ;
typedef  TYPE_5__ ngx_http_gzip_conf_t ;
struct TYPE_29__ {scalar_t__ gzip_disable_degradation; } ;
typedef  TYPE_6__ ngx_http_core_loc_conf_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ERROR ; 
 scalar_t__ NGX_HTTP_FORBIDDEN ; 
 scalar_t__ NGX_HTTP_NOT_FOUND ; 
 scalar_t__ NGX_HTTP_OK ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  ngx_http_core_module ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 void* FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  ngx_http_gzip_filter_module ; 
 scalar_t__ FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 TYPE_2__* FUNC11 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_7__*,char*) ; 

__attribute__((used)) static ngx_int_t
FUNC14(ngx_http_request_t *r)
{
    ngx_table_elt_t       *h;
    ngx_http_gzip_ctx_t   *ctx;
    ngx_http_gzip_conf_t  *conf;

    conf = FUNC4(r, ngx_http_gzip_filter_module);

    if (!conf->enable
        || (r->headers_out.status != NGX_HTTP_OK
            && r->headers_out.status != NGX_HTTP_FORBIDDEN
            && r->headers_out.status != NGX_HTTP_NOT_FOUND)
        || (r->headers_out.content_encoding
            && r->headers_out.content_encoding->value.len)
        || (r->headers_out.content_length_n != -1
            && r->headers_out.content_length_n < conf->min_length)
        || FUNC9(r, &conf->types) == NULL
        || r->header_only)
    {
        return FUNC7(r);
    }

    r->gzip_vary = 1;

#if (NGX_HTTP_DEGRADATION)
    {
    ngx_http_core_loc_conf_t  *clcf;

    clcf = ngx_http_get_module_loc_conf(r, ngx_http_core_module);

    if (clcf->gzip_disable_degradation && ngx_http_degraded(r)) {
        return ngx_http_next_header_filter(r);
    }
    }
#endif

    if (!r->gzip_tested) {
        if (FUNC6(r) != NGX_OK) {
            return FUNC7(r);
        }

    } else if (!r->gzip_ok) {
        return FUNC7(r);
    }

    ctx = FUNC12(r->pool, sizeof(ngx_http_gzip_ctx_t));
    if (ctx == NULL) {
        return NGX_ERROR;
    }

    FUNC8(r, ctx, ngx_http_gzip_filter_module);

    ctx->request = r;
    ctx->buffering = (conf->postpone_gzipping != 0);

    FUNC5(r, ctx);

    h = FUNC11(&r->headers_out.headers);
    if (h == NULL) {
        return NGX_ERROR;
    }

    h->hash = 1;
    FUNC13(&h->key, "Content-Encoding");
    FUNC13(&h->value, "gzip");
    r->headers_out.content_encoding = h;

    r->main_filter_need_in_memory = 1;

    FUNC1(r);
    FUNC0(r);
#if (T_NGX_GZIP_CLEAR_ETAG)
    if (conf->clear_etag) {
        ngx_http_clear_etag(r);
    } else
#endif
    FUNC10(r);

    return FUNC7(r);
}