#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int ngx_uint_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_18__ {int /*<<< orphan*/  pool; TYPE_1__* connection; } ;
typedef  TYPE_3__ ngx_http_request_t ;
struct TYPE_17__ {scalar_t__ len; scalar_t__ data; } ;
struct TYPE_19__ {TYPE_2__ footer; } ;
typedef  TYPE_4__ ngx_http_footer_ctx_t ;
struct TYPE_20__ {TYPE_6__* buf; struct TYPE_20__* next; } ;
typedef  TYPE_5__ ngx_chain_t ;
struct TYPE_21__ {int last_buf; int memory; scalar_t__ last; scalar_t__ end; scalar_t__ pos; scalar_t__ start; } ;
typedef  TYPE_6__ ngx_buf_t ;
struct TYPE_16__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 TYPE_5__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_6__*) ; 
 TYPE_6__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_footer_filter_module ; 
 TYPE_4__* FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static ngx_int_t
FUNC6(ngx_http_request_t *r, ngx_chain_t *in)
{
    ngx_buf_t             *buf;
    ngx_uint_t             last;
    ngx_chain_t           *cl, *nl;
    ngx_http_footer_ctx_t *ctx;

    FUNC5(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "http footer body filter");

    ctx = FUNC3(r, ngx_http_footer_filter_module);
    if (ctx == NULL) {
        return FUNC4(r, in);
    }

    last = 0;

    for (cl = in; cl; cl = cl->next) {
         if (cl->buf->last_buf) {
             last = 1;
             break;
         }
    }

    if (!last) {
        return FUNC4(r, in);
    }

    buf = FUNC2(r->pool);
    if (buf == NULL) {
        return NGX_ERROR;
    }

    buf->pos = ctx->footer.data;
    buf->last = buf->pos + ctx->footer.len;
    buf->start = buf->pos;
    buf->end = buf->last;
    buf->last_buf = 1;
    buf->memory = 1;

    if (FUNC1(cl->buf) == 0) {
        cl->buf = buf;
    } else {
        nl = FUNC0(r->pool);
        if (nl == NULL) {
            return NGX_ERROR;
        }

        nl->buf = buf;
        nl->next = NULL;
        cl->next = nl;
        cl->buf->last_buf = 0;
    }

    return FUNC4(r, in);
}