#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int ngx_int_t ;
struct TYPE_13__ {int /*<<< orphan*/  pool; TYPE_1__* connection; } ;
typedef  TYPE_2__ ngx_http_request_t ;
struct TYPE_14__ {int /*<<< orphan*/  free_bufs; } ;
typedef  TYPE_3__ ngx_http_lua_ctx_t ;
struct TYPE_15__ {struct TYPE_15__* next; TYPE_5__* buf; } ;
typedef  TYPE_4__ ngx_chain_t ;
struct TYPE_16__ {scalar_t__ pos; scalar_t__ last; scalar_t__ start; scalar_t__ end; scalar_t__ last_buf; scalar_t__ last_in_chain; } ;
typedef  TYPE_5__ ngx_buf_t ;
struct TYPE_12__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int NGX_ERROR ; 
 int NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 scalar_t__ FUNC1 (TYPE_5__*) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__,scalar_t__) ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 

ngx_int_t
FUNC4(ngx_http_request_t *r, ngx_http_lua_ctx_t *ctx,
    ngx_chain_t ***plast, ngx_chain_t *in, ngx_int_t *eof)
{
    ngx_chain_t     *cl;
    size_t           len;
    ngx_buf_t       *b;

    len = 0;
    *eof = 0;

    for (cl = in; cl; cl = cl->next) {
        if (FUNC1(cl->buf)) {
            len += cl->buf->last - cl->buf->pos;
        }

        if (cl->buf->last_in_chain || cl->buf->last_buf) {
            *eof = 1;
        }
    }

    if (len == 0) {
        return NGX_OK;
    }

    cl = FUNC3(r->connection->log, r->pool,
                                         &ctx->free_bufs, len);
    if (cl == NULL) {
        return NGX_ERROR;
    }

    FUNC0("chains get free buf: %d == %d", (int) (cl->buf->end - cl->buf->start),
       (int) len);

    b = cl->buf;

    while (in) {
        if (FUNC1(in->buf)) {
            b->last = FUNC2(b->last, in->buf->pos,
                               in->buf->last - in->buf->pos);
        }

        in = in->next;
    }

    **plast = cl;
    *plast = &cl->next;

    return NGX_OK;
}