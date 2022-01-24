#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_9__ ;
typedef  struct TYPE_29__   TYPE_8__ ;
typedef  struct TYPE_28__   TYPE_7__ ;
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;
typedef  struct TYPE_21__   TYPE_17__ ;

/* Type definitions */
typedef  scalar_t__ ssize_t ;
typedef  int ngx_uint_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_23__ {int /*<<< orphan*/  tag; } ;
struct TYPE_30__ {size_t pos; size_t start; size_t last; size_t end; } ;
struct TYPE_22__ {TYPE_8__* connection; } ;
struct TYPE_26__ {int length; scalar_t__ (* input_filter ) (int /*<<< orphan*/ ,scalar_t__) ;TYPE_4__* conf; int /*<<< orphan*/  input_filter_ctx; TYPE_3__* state; int /*<<< orphan*/ * busy_bufs; TYPE_2__ output; scalar_t__ out_bufs; int /*<<< orphan*/  free_bufs; TYPE_9__ buffer; TYPE_1__ peer; } ;
typedef  TYPE_5__ ngx_http_upstream_t ;
struct TYPE_27__ {int /*<<< orphan*/  pool; TYPE_8__* connection; TYPE_5__* upstream; } ;
typedef  TYPE_6__ ngx_http_request_t ;
struct TYPE_28__ {int /*<<< orphan*/  send_timeout; int /*<<< orphan*/  send_lowat; } ;
typedef  TYPE_7__ ngx_http_core_loc_conf_t ;
struct TYPE_29__ {scalar_t__ (* recv ) (TYPE_8__*,size_t,size_t) ;TYPE_17__* read; TYPE_17__* write; TYPE_6__* data; int /*<<< orphan*/  log; scalar_t__ buffered; } ;
typedef  TYPE_8__ ngx_connection_t ;
typedef  TYPE_9__ ngx_buf_t ;
struct TYPE_25__ {int /*<<< orphan*/  read_timeout; } ;
struct TYPE_24__ {int /*<<< orphan*/  response_length; int /*<<< orphan*/  bytes_received; } ;
struct TYPE_21__ {scalar_t__ timer_set; scalar_t__ ready; scalar_t__ active; scalar_t__ error; scalar_t__ eof; } ;

/* Variables and functions */
 scalar_t__ NGX_AGAIN ; 
 int NGX_CLOSE_EVENT ; 
 scalar_t__ NGX_ERROR ; 
 scalar_t__ NGX_HTTP_BAD_GATEWAY ; 
 int /*<<< orphan*/  NGX_LOG_ERR ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_17__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_17__*) ; 
 scalar_t__ FUNC3 (TYPE_17__*,int) ; 
 scalar_t__ FUNC4 (TYPE_17__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_core_module ; 
 TYPE_7__* FUNC5 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_6__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,TYPE_5__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC9 (TYPE_8__*,size_t,size_t) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC11(ngx_http_request_t *r,
    ngx_uint_t do_write)
{
    size_t                     size;
    ssize_t                    n;
    ngx_buf_t                 *b;
    ngx_int_t                  rc;
    ngx_uint_t                 flags;
    ngx_connection_t          *downstream, *upstream;
    ngx_http_upstream_t       *u;
    ngx_http_core_loc_conf_t  *clcf;

    u = r->upstream;
    downstream = r->connection;
    upstream = u->peer.connection;

    b = &u->buffer;

    do_write = do_write || u->length == 0;

    for ( ;; ) {

        if (do_write) {

            if (u->out_bufs || u->busy_bufs || downstream->buffered) {
                rc = FUNC6(r, u->out_bufs);

                if (rc == NGX_ERROR) {
                    FUNC7(r, u, NGX_ERROR);
                    return;
                }

                FUNC1(r->pool, &u->free_bufs, &u->busy_bufs,
                                        &u->out_bufs, u->output.tag);
            }

            if (u->busy_bufs == NULL) {

                if (u->length == 0
                    || (upstream->read->eof && u->length == -1))
                {
                    FUNC7(r, u, 0);
                    return;
                }

                if (upstream->read->eof) {
                    FUNC8(NGX_LOG_ERR, upstream->log, 0,
                                  "upstream prematurely closed connection");

                    FUNC7(r, u,
                                                       NGX_HTTP_BAD_GATEWAY);
                    return;
                }

                if (upstream->read->error) {
                    FUNC7(r, u,
                                                       NGX_HTTP_BAD_GATEWAY);
                    return;
                }

                b->pos = b->start;
                b->last = b->start;
            }
        }

        size = b->end - b->last;

        if (size && upstream->read->ready) {

            n = upstream->recv(upstream, b->last, size);

            if (n == NGX_AGAIN) {
                break;
            }

            if (n > 0) {
                u->state->bytes_received += n;
                u->state->response_length += n;

                if (u->input_filter(u->input_filter_ctx, n) == NGX_ERROR) {
                    FUNC7(r, u, NGX_ERROR);
                    return;
                }
            }

            do_write = 1;

            continue;
        }

        break;
    }

    clcf = FUNC5(r, ngx_http_core_module);

    if (downstream->data == r) {
        if (FUNC4(downstream->write, clcf->send_lowat)
            != NGX_OK)
        {
            FUNC7(r, u, NGX_ERROR);
            return;
        }
    }

    if (downstream->write->active && !downstream->write->ready) {
        FUNC0(downstream->write, clcf->send_timeout);

    } else if (downstream->write->timer_set) {
        FUNC2(downstream->write);
    }

    if (upstream->read->eof || upstream->read->error) {
        flags = NGX_CLOSE_EVENT;

    } else {
        flags = 0;
    }

    if (FUNC3(upstream->read, flags) != NGX_OK) {
        FUNC7(r, u, NGX_ERROR);
        return;
    }

    if (upstream->read->active && !upstream->read->ready) {
        FUNC0(upstream->read, u->conf->read_timeout);

    } else if (upstream->read->timer_set) {
        FUNC2(upstream->read);
    }
}