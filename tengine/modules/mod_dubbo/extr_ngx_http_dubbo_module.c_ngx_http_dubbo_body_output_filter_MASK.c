#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_42__   TYPE_9__ ;
typedef  struct TYPE_41__   TYPE_8__ ;
typedef  struct TYPE_40__   TYPE_7__ ;
typedef  struct TYPE_39__   TYPE_6__ ;
typedef  struct TYPE_38__   TYPE_5__ ;
typedef  struct TYPE_37__   TYPE_4__ ;
typedef  struct TYPE_36__   TYPE_3__ ;
typedef  struct TYPE_35__   TYPE_2__ ;
typedef  struct TYPE_34__   TYPE_1__ ;
typedef  struct TYPE_33__   TYPE_12__ ;
typedef  struct TYPE_32__   TYPE_11__ ;
typedef  struct TYPE_31__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  ngx_queue_t ;
struct TYPE_37__ {int /*<<< orphan*/  front_queue; int /*<<< orphan*/  backend_queue; TYPE_11__* out; } ;
typedef  TYPE_4__ ngx_multi_request_t ;
struct TYPE_38__ {int /*<<< orphan*/  send_list; } ;
typedef  TYPE_5__ ngx_multi_connection_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_39__ {int /*<<< orphan*/  pool; TYPE_3__* upstream; int /*<<< orphan*/ * backend_r; TYPE_2__* connection; } ;
typedef  TYPE_6__ ngx_http_request_t ;
struct TYPE_40__ {int /*<<< orphan*/  heartbeat_interval; } ;
typedef  TYPE_7__ ngx_http_dubbo_loc_conf_t ;
struct TYPE_41__ {TYPE_11__* free; int /*<<< orphan*/  busy; TYPE_11__* out; TYPE_9__* connection; } ;
typedef  TYPE_8__ ngx_http_dubbo_ctx_t ;
struct TYPE_42__ {int /*<<< orphan*/  ping_event; } ;
typedef  TYPE_9__ ngx_dubbo_connection_t ;
struct TYPE_31__ {int /*<<< orphan*/  log; TYPE_6__* data; } ;
typedef  TYPE_10__ ngx_connection_t ;
struct TYPE_32__ {TYPE_12__* buf; struct TYPE_32__* next; } ;
typedef  TYPE_11__ ngx_chain_t ;
typedef  scalar_t__ ngx_buf_tag_t ;
struct TYPE_33__ {int last_shadow; struct TYPE_33__* shadow; int /*<<< orphan*/  last; int /*<<< orphan*/  pos; scalar_t__ last_in_chain; scalar_t__ last_buf; scalar_t__ tag; int /*<<< orphan*/ * start; } ;
typedef  TYPE_12__ ngx_buf_t ;
struct TYPE_34__ {TYPE_10__* connection; } ;
struct TYPE_36__ {int /*<<< orphan*/  writer; int /*<<< orphan*/  multi; TYPE_1__ peer; } ;
struct TYPE_35__ {int /*<<< orphan*/  pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_HTTP_INTERNAL_SERVER_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_ERR ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_11__* FUNC1 (int /*<<< orphan*/ ,TYPE_11__**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_11__**,int /*<<< orphan*/ *,TYPE_11__**,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_11__*) ; 
 TYPE_5__* FUNC4 (TYPE_10__*) ; 
 scalar_t__ FUNC5 (TYPE_6__*,TYPE_10__*,TYPE_4__**,TYPE_11__*) ; 
 TYPE_8__* FUNC6 (TYPE_6__*) ; 
 int /*<<< orphan*/  ngx_http_dubbo_module ; 
 TYPE_7__* FUNC7 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_12__*,TYPE_12__*,int) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ngx_int_t
FUNC14(void *data, ngx_chain_t *in)
{
    ngx_http_request_t      *r = data;
    ngx_connection_t        *pc = r->upstream->peer.connection;
    ngx_http_request_t      *fake_r = pc->data;
    ngx_chain_t             *out, *cl, **ll, *tmp;
    ngx_multi_request_t     *multi_r;
    ngx_buf_t               *b;
    u_char                  *start;
    ngx_int_t                rc;
    ngx_multi_connection_t  *multi_c;
    ngx_dubbo_connection_t  *dubbo_c;
    ngx_http_dubbo_loc_conf_t *dlcf;

    ngx_http_dubbo_ctx_t    *ctx = FUNC6(fake_r);

    if (!r->upstream->multi) {
        FUNC8(NGX_LOG_ERR, pc->log, 0, "dubbo: only support upstream multi module");
        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

    multi_c = FUNC4(pc);
    dubbo_c = ctx->connection;

    dlcf = FUNC7(r, ngx_http_dubbo_module);

    if (r == fake_r && in != NULL) {
        FUNC8(NGX_LOG_ERR, pc->log, 0, "dubbo: body output failed %p, %p", pc, r);

        return NGX_ERROR;
    }

    out = NULL;
    ll = &out;

    if (ctx->out) {

        *ll = ctx->out;

        for (cl = ctx->out, ll = &cl->next; cl; cl = cl->next) {
            ll = &cl->next;
        }

        ctx->out = NULL;
    }

    if (r != fake_r) { //no need send dubbo request when fake_r

        if (NGX_OK != FUNC5(r, pc, &multi_r, in)) {
            FUNC8(NGX_LOG_ERR, pc->log, 0, "dubbo: http create request failed %p, %p", pc, r);
            return NGX_ERROR;
        }

        for (cl = multi_r->out; cl; cl = cl->next) {
            tmp = FUNC1(fake_r->pool, &ctx->free);
            if (tmp == NULL) {
                return NGX_ERROR;
            }

            b = tmp->buf;
            start = b->start;

            FUNC9(b, cl->buf, sizeof(ngx_buf_t));

            /*
             * restore b->start to preserve memory allocated in the buffer,
             * to reuse it later for headers and control frames
             */

            b->start = start;

            b->tag = (ngx_buf_tag_t) &ngx_http_dubbo_body_output_filter;
            b->shadow = cl->buf;
            b->last_shadow = 1;

            b->last_buf = 0;
            b->last_in_chain = 0;

            *ll = tmp;
            ll = &tmp->next;
        }

        FUNC12(&multi_c->send_list, &multi_r->backend_queue);

        //init front list
        if (r->backend_r == NULL) {
            r->backend_r = FUNC10(r->connection->pool, sizeof(ngx_queue_t));
            if (r->backend_r == NULL) {
                return NGX_ERROR;
            }

            FUNC11(r->backend_r);
        }

        //add to front list to remove on front close early
        FUNC13(r->backend_r, &multi_r->front_queue);
    }

    rc = FUNC3(&fake_r->upstream->writer, out);

    FUNC2(fake_r->pool, &ctx->free, &ctx->busy, &out,
            (ngx_buf_tag_t) &ngx_http_dubbo_body_output_filter);

    for (cl = ctx->free; cl; cl = cl->next) {

        /* mark original buffers as sent */
        if (cl->buf->shadow) {
            if (cl->buf->last_shadow) {
                b = cl->buf->shadow;
                b->pos = b->last;
            }

            cl->buf->shadow = NULL;
        }
    }

    FUNC0(&dubbo_c->ping_event, dlcf->heartbeat_interval);

    return rc;
}