#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_31__   TYPE_9__ ;
typedef  struct TYPE_30__   TYPE_8__ ;
typedef  struct TYPE_29__   TYPE_7__ ;
typedef  struct TYPE_28__   TYPE_6__ ;
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;
typedef  struct TYPE_22__   TYPE_17__ ;

/* Type definitions */
typedef  scalar_t__ ssize_t ;
typedef  int ngx_uint_t ;
struct TYPE_31__ {scalar_t__ last; scalar_t__ pos; int temporary; int /*<<< orphan*/ * end; int /*<<< orphan*/ * start; int /*<<< orphan*/  tag; } ;
struct TYPE_26__ {int /*<<< orphan*/  tag; } ;
struct TYPE_24__ {TYPE_8__* connection; } ;
struct TYPE_27__ {TYPE_3__* conf; TYPE_9__ from_client; TYPE_9__ buffer; TYPE_1__* state; TYPE_4__ output; TYPE_2__ peer; } ;
typedef  TYPE_5__ ngx_http_upstream_t ;
struct TYPE_28__ {int /*<<< orphan*/  pool; TYPE_9__* header_in; TYPE_5__* upstream; TYPE_8__* connection; } ;
typedef  TYPE_6__ ngx_http_request_t ;
struct TYPE_29__ {int /*<<< orphan*/  send_timeout; int /*<<< orphan*/  send_lowat; } ;
typedef  TYPE_7__ ngx_http_core_loc_conf_t ;
struct TYPE_30__ {int timedout; scalar_t__ (* send ) (TYPE_8__*,int /*<<< orphan*/ *,size_t) ;scalar_t__ (* recv ) (TYPE_8__*,int /*<<< orphan*/ *,size_t) ;TYPE_17__* write; TYPE_17__* read; int /*<<< orphan*/  log; } ;
typedef  TYPE_8__ ngx_connection_t ;
typedef  TYPE_9__ ngx_buf_t ;
struct TYPE_25__ {int buffer_size; int /*<<< orphan*/  read_timeout; int /*<<< orphan*/  send_timeout; int /*<<< orphan*/  send_lowat; } ;
struct TYPE_23__ {int /*<<< orphan*/  bytes_received; } ;
struct TYPE_22__ {int eof; scalar_t__ timer_set; scalar_t__ ready; scalar_t__ active; scalar_t__ error; scalar_t__ timedout; } ;

/* Variables and functions */
 scalar_t__ NGX_AGAIN ; 
 int NGX_CLOSE_EVENT ; 
 scalar_t__ NGX_ERROR ; 
 int /*<<< orphan*/  NGX_ETIMEDOUT ; 
 scalar_t__ NGX_HTTP_GATEWAY_TIME_OUT ; 
 scalar_t__ NGX_HTTP_REQUEST_TIME_OUT ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_17__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_8__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_17__*) ; 
 scalar_t__ FUNC3 (TYPE_17__*,int) ; 
 scalar_t__ FUNC4 (TYPE_17__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_core_module ; 
 TYPE_7__* FUNC5 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,TYPE_5__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (TYPE_8__*,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC11 (TYPE_8__*,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static void
FUNC12(ngx_http_request_t *r,
    ngx_uint_t from_upstream, ngx_uint_t do_write)
{
    size_t                     size;
    ssize_t                    n;
    ngx_buf_t                 *b;
    ngx_uint_t                 flags;
    ngx_connection_t          *c, *downstream, *upstream, *dst, *src;
    ngx_http_upstream_t       *u;
    ngx_http_core_loc_conf_t  *clcf;

    c = r->connection;
    u = r->upstream;

    FUNC8(NGX_LOG_DEBUG_HTTP, c->log, 0,
                   "http upstream process upgraded, fu:%ui", from_upstream);

    downstream = c;
    upstream = u->peer.connection;

    if (downstream->write->timedout) {
        c->timedout = 1;
        FUNC1(c, NGX_ETIMEDOUT, "client timed out");
        FUNC6(r, u, NGX_HTTP_REQUEST_TIME_OUT);
        return;
    }

    if (upstream->read->timedout || upstream->write->timedout) {
        FUNC1(c, NGX_ETIMEDOUT, "upstream timed out");
        FUNC6(r, u, NGX_HTTP_GATEWAY_TIME_OUT);
        return;
    }

    if (from_upstream) {
        src = upstream;
        dst = downstream;
        b = &u->buffer;

    } else {
        src = downstream;
        dst = upstream;
        b = &u->from_client;

        if (r->header_in->last > r->header_in->pos) {
            b = r->header_in;
            b->end = b->last;
            do_write = 1;
        }

        if (b->start == NULL) {
            b->start = FUNC9(r->pool, u->conf->buffer_size);
            if (b->start == NULL) {
                FUNC6(r, u, NGX_ERROR);
                return;
            }

            b->pos = b->start;
            b->last = b->start;
            b->end = b->start + u->conf->buffer_size;
            b->temporary = 1;
            b->tag = u->output.tag;
        }
    }

    for ( ;; ) {

        if (do_write) {

            size = b->last - b->pos;

            if (size && dst->write->ready) {

                n = dst->send(dst, b->pos, size);

                if (n == NGX_ERROR) {
                    FUNC6(r, u, NGX_ERROR);
                    return;
                }

                if (n > 0) {
                    b->pos += n;

                    if (b->pos == b->last) {
                        b->pos = b->start;
                        b->last = b->start;
                    }
                }
            }
        }

        size = b->end - b->last;

        if (size && src->read->ready) {

            n = src->recv(src, b->last, size);

            if (n == NGX_AGAIN || n == 0) {
                break;
            }

            if (n > 0) {
                do_write = 1;
                b->last += n;

                if (from_upstream) {
                    u->state->bytes_received += n;
                }

                continue;
            }

            if (n == NGX_ERROR) {
                src->read->eof = 1;
            }
        }

        break;
    }

    if ((upstream->read->eof && u->buffer.pos == u->buffer.last)
        || (downstream->read->eof && u->from_client.pos == u->from_client.last)
        || (downstream->read->eof && upstream->read->eof))
    {
        FUNC7(NGX_LOG_DEBUG_HTTP, c->log, 0,
                       "http upstream upgraded done");
        FUNC6(r, u, 0);
        return;
    }

    clcf = FUNC5(r, ngx_http_core_module);

    if (FUNC4(upstream->write, u->conf->send_lowat)
        != NGX_OK)
    {
        FUNC6(r, u, NGX_ERROR);
        return;
    }

    if (upstream->write->active && !upstream->write->ready) {
        FUNC0(upstream->write, u->conf->send_timeout);

    } else if (upstream->write->timer_set) {
        FUNC2(upstream->write);
    }

    if (upstream->read->eof || upstream->read->error) {
        flags = NGX_CLOSE_EVENT;

    } else {
        flags = 0;
    }

    if (FUNC3(upstream->read, flags) != NGX_OK) {
        FUNC6(r, u, NGX_ERROR);
        return;
    }

    if (upstream->read->active && !upstream->read->ready) {
        FUNC0(upstream->read, u->conf->read_timeout);

    } else if (upstream->read->timer_set) {
        FUNC2(upstream->read);
    }

    if (FUNC4(downstream->write, clcf->send_lowat)
        != NGX_OK)
    {
        FUNC6(r, u, NGX_ERROR);
        return;
    }

    if (downstream->read->eof || downstream->read->error) {
        flags = NGX_CLOSE_EVENT;

    } else {
        flags = 0;
    }

    if (FUNC3(downstream->read, flags) != NGX_OK) {
        FUNC6(r, u, NGX_ERROR);
        return;
    }

    if (downstream->write->active && !downstream->write->ready) {
        FUNC0(downstream->write, clcf->send_timeout);

    } else if (downstream->write->timer_set) {
        FUNC2(downstream->write);
    }
}