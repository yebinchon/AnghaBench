#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_20__ {TYPE_2__* content_encoding; } ;
struct TYPE_21__ {int gzip_vary; int filter_need_in_memory; TYPE_3__ headers_out; int /*<<< orphan*/  pool; scalar_t__ gzip_ok; int /*<<< orphan*/  gzip_tested; } ;
typedef  TYPE_4__ ngx_http_request_t ;
struct TYPE_22__ {TYPE_4__* request; } ;
typedef  TYPE_5__ ngx_http_gunzip_ctx_t ;
struct TYPE_23__ {int /*<<< orphan*/  enable; } ;
typedef  TYPE_6__ ngx_http_gunzip_conf_t ;
struct TYPE_18__ {int len; int /*<<< orphan*/  data; } ;
struct TYPE_19__ {scalar_t__ hash; TYPE_1__ value; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ERROR ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 TYPE_6__* FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_gunzip_filter_module ; 
 scalar_t__ FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 TYPE_5__* FUNC7 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static ngx_int_t
FUNC9(ngx_http_request_t *r)
{
    ngx_http_gunzip_ctx_t   *ctx;
    ngx_http_gunzip_conf_t  *conf;

    conf = FUNC2(r, ngx_http_gunzip_filter_module);

    /* TODO support multiple content-codings */
    /* TODO always gunzip - due to configuration or module request */
    /* TODO ignore content encoding? */

    if (!conf->enable
        || r->headers_out.content_encoding == NULL
        || r->headers_out.content_encoding->value.len != 4
        || FUNC8(r->headers_out.content_encoding->value.data,
                           (u_char *) "gzip", 4) != 0)
    {
        return FUNC4(r);
    }

    r->gzip_vary = 1;

    if (!r->gzip_tested) {
        if (FUNC3(r) == NGX_OK) {
            return FUNC4(r);
        }

    } else if (r->gzip_ok) {
        return FUNC4(r);
    }

    ctx = FUNC7(r->pool, sizeof(ngx_http_gunzip_ctx_t));
    if (ctx == NULL) {
        return NGX_ERROR;
    }

    FUNC5(r, ctx, ngx_http_gunzip_filter_module);

    ctx->request = r;

    r->filter_need_in_memory = 1;

    r->headers_out.content_encoding->hash = 0;
    r->headers_out.content_encoding = NULL;

    FUNC1(r);
    FUNC0(r);
    FUNC6(r);

    return FUNC4(r);
}