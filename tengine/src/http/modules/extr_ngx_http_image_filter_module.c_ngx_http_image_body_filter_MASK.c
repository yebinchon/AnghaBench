#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_33__   TYPE_7__ ;
typedef  struct TYPE_32__   TYPE_6__ ;
typedef  struct TYPE_31__   TYPE_5__ ;
typedef  struct TYPE_30__   TYPE_4__ ;
typedef  struct TYPE_29__   TYPE_3__ ;
typedef  struct TYPE_28__   TYPE_2__ ;
typedef  struct TYPE_27__   TYPE_1__ ;

/* Type definitions */
struct TYPE_29__ {int /*<<< orphan*/  len; } ;
typedef  TYPE_3__ ngx_str_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_28__ {int /*<<< orphan*/ * content_type_lowcase; TYPE_3__ content_type; int /*<<< orphan*/  content_type_len; } ;
struct TYPE_30__ {TYPE_2__ headers_out; TYPE_1__* connection; } ;
typedef  TYPE_4__ ngx_http_request_t ;
struct TYPE_31__ {int phase; int /*<<< orphan*/  type; } ;
typedef  TYPE_5__ ngx_http_image_filter_ctx_t ;
struct TYPE_32__ {int /*<<< orphan*/  filter; } ;
typedef  TYPE_6__ ngx_http_image_filter_conf_t ;
struct TYPE_33__ {int /*<<< orphan*/ * next; int /*<<< orphan*/ * buf; } ;
typedef  TYPE_7__ ngx_chain_t ;
struct TYPE_27__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_AGAIN ; 
 int /*<<< orphan*/  NGX_ERROR ; 
 int NGX_HTTP_IMAGE_DONE ; 
 int /*<<< orphan*/  NGX_HTTP_IMAGE_NONE ; 
#define  NGX_HTTP_IMAGE_PASS 131 
#define  NGX_HTTP_IMAGE_PROCESS 130 
#define  NGX_HTTP_IMAGE_READ 129 
 int /*<<< orphan*/  NGX_HTTP_IMAGE_SIZE ; 
#define  NGX_HTTP_IMAGE_START 128 
 int /*<<< orphan*/  NGX_HTTP_IMAGE_TEST ; 
 int /*<<< orphan*/  NGX_HTTP_UNSUPPORTED_MEDIA_TYPE ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC1 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_image_filter_module ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,TYPE_5__*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,TYPE_7__*) ; 
 TYPE_3__* ngx_http_image_types ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static ngx_int_t
FUNC10(ngx_http_request_t *r, ngx_chain_t *in)
{
    ngx_int_t                      rc;
    ngx_str_t                     *ct;
    ngx_chain_t                    out;
    ngx_http_image_filter_ctx_t   *ctx;
    ngx_http_image_filter_conf_t  *conf;

    FUNC9(NGX_LOG_DEBUG_HTTP, r->connection->log, 0, "image filter");

    if (in == NULL) {
        return FUNC8(r, in);
    }

    ctx = FUNC1(r, ngx_http_image_filter_module);

    if (ctx == NULL) {
        return FUNC8(r, in);
    }

    switch (ctx->phase) {

    case NGX_HTTP_IMAGE_START:

        ctx->type = FUNC7(r, in);

        conf = FUNC2(r, ngx_http_image_filter_module);

        if (ctx->type == NGX_HTTP_IMAGE_NONE) {

            if (conf->filter == NGX_HTTP_IMAGE_SIZE) {
                out.buf = FUNC3(r, NULL);

                if (out.buf) {
                    out.next = NULL;
                    ctx->phase = NGX_HTTP_IMAGE_DONE;

                    return FUNC6(r, ctx, &out);
                }
            }

            return FUNC0(r,
                                              &ngx_http_image_filter_module,
                                              NGX_HTTP_UNSUPPORTED_MEDIA_TYPE);
        }

        /* override content type */

        ct = &ngx_http_image_types[ctx->type - 1];
        r->headers_out.content_type_len = ct->len;
        r->headers_out.content_type = *ct;
        r->headers_out.content_type_lowcase = NULL;

        if (conf->filter == NGX_HTTP_IMAGE_TEST) {
            ctx->phase = NGX_HTTP_IMAGE_PASS;

            return FUNC6(r, ctx, in);
        }

        ctx->phase = NGX_HTTP_IMAGE_READ;

        /* fall through */

    case NGX_HTTP_IMAGE_READ:

        rc = FUNC5(r, in);

        if (rc == NGX_AGAIN) {
            return NGX_OK;
        }

        if (rc == NGX_ERROR) {
            return FUNC0(r,
                                              &ngx_http_image_filter_module,
                                              NGX_HTTP_UNSUPPORTED_MEDIA_TYPE);
        }

        /* fall through */

    case NGX_HTTP_IMAGE_PROCESS:

        out.buf = FUNC4(r);

        if (out.buf == NULL) {
            return FUNC0(r,
                                              &ngx_http_image_filter_module,
                                              NGX_HTTP_UNSUPPORTED_MEDIA_TYPE);
        }

        out.next = NULL;
        ctx->phase = NGX_HTTP_IMAGE_PASS;

        return FUNC6(r, ctx, &out);

    case NGX_HTTP_IMAGE_PASS:

        return FUNC8(r, in);

    default: /* NGX_HTTP_IMAGE_DONE */

        rc = FUNC8(r, NULL);

        /* NGX_ERROR resets any pending data */
        return (rc == NGX_OK) ? NGX_ERROR : rc;
    }
}