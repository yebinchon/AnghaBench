#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  size_t ngx_int_t ;
struct TYPE_11__ {int filter_need_in_memory; int filter_need_temporary; struct TYPE_11__* main; int /*<<< orphan*/  pool; } ;
typedef  TYPE_1__ ngx_http_request_t ;
struct TYPE_12__ {scalar_t__ utf8; int /*<<< orphan*/  length; int /*<<< orphan*/  name; int /*<<< orphan*/ * tables; } ;
typedef  TYPE_2__ ngx_http_charset_t ;
struct TYPE_13__ {size_t charset; scalar_t__ from_utf8; scalar_t__ to_utf8; int /*<<< orphan*/  length; int /*<<< orphan*/  charset_name; int /*<<< orphan*/  table; } ;
typedef  TYPE_3__ ngx_http_charset_ctx_t ;

/* Variables and functions */
 size_t NGX_ERROR ; 
 int /*<<< orphan*/  ngx_http_charset_filter_module ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 size_t FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ngx_int_t
FUNC4(ngx_http_request_t *r, ngx_http_charset_t *charsets,
    ngx_int_t charset, ngx_int_t source_charset)
{
    ngx_http_charset_ctx_t  *ctx;

    ctx = FUNC3(r->pool, sizeof(ngx_http_charset_ctx_t));
    if (ctx == NULL) {
        return NGX_ERROR;
    }

    FUNC2(r, ctx, ngx_http_charset_filter_module);

    ctx->table = charsets[source_charset].tables[charset];
    ctx->charset = charset;
    ctx->charset_name = charsets[charset].name;
    ctx->length = charsets[charset].length;
    ctx->from_utf8 = charsets[source_charset].utf8;
    ctx->to_utf8 = charsets[charset].utf8;

    r->filter_need_in_memory = 1;

    if ((ctx->to_utf8 || ctx->from_utf8) && r == r->main) {
        FUNC0(r);

    } else {
        r->filter_need_temporary = 1;
    }

    return FUNC1(r);
}