#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_7__ ;
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;
typedef  struct TYPE_20__   TYPE_16__ ;

/* Type definitions */
typedef  scalar_t__ ngx_int_t ;
struct TYPE_21__ {int /*<<< orphan*/  tag; } ;
struct TYPE_23__ {scalar_t__ length; TYPE_2__* conf; int /*<<< orphan*/  send_pool; int /*<<< orphan*/ * busy_bufs; TYPE_1__ output; scalar_t__ out_bufs; int /*<<< orphan*/  free_bufs; } ;
typedef  TYPE_3__ ngx_http_upstream_t ;
struct TYPE_24__ {TYPE_6__* connection; int /*<<< orphan*/  pool; TYPE_3__* upstream; } ;
typedef  TYPE_4__ ngx_http_request_t ;
struct TYPE_25__ {int /*<<< orphan*/  send_timeout; int /*<<< orphan*/  send_lowat; } ;
typedef  TYPE_5__ ngx_http_core_loc_conf_t ;
struct TYPE_26__ {TYPE_16__* write; TYPE_4__* data; int /*<<< orphan*/  log; scalar_t__ buffered; } ;
typedef  TYPE_6__ ngx_connection_t ;
struct TYPE_27__ {TYPE_16__* read; } ;
struct TYPE_22__ {int /*<<< orphan*/  read_timeout; } ;
struct TYPE_20__ {scalar_t__ timer_set; int /*<<< orphan*/  ready; scalar_t__ active; } ;

/* Variables and functions */
 scalar_t__ NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_16__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_16__*) ; 
 scalar_t__ FUNC3 (TYPE_16__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_16__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_core_module ; 
 TYPE_5__* FUNC5 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_7__* upstream ; 

void
FUNC10(ngx_http_request_t *r)
{
    ngx_int_t                  rc;
    ngx_http_upstream_t       *u;
    ngx_http_core_loc_conf_t  *clcf;

    ngx_connection_t          *downstream;

    u = r->upstream;
    downstream = r->connection;

    FUNC8(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
            "multi: http upstream send body: %p, %p", r, u);

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

        if (u->length == 0) {

            FUNC8(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                    "http multi upstream finalize: %p, %p", r, u);
            FUNC7(r, u, 0);
            return;
        }

        FUNC9(u->send_pool);

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
#if 0
    if (ngx_handle_read_event(upstream->read, 0) != NGX_OK) {
        ngx_http_upstream_finalize_request(r, u, NGX_ERROR);
        return;
    }

    if (upstream->read->active && !upstream->read->ready) {
        ngx_add_timer(upstream->read, u->conf->read_timeout);
    } else if (upstream->read->timer_set) {
        ngx_del_timer(upstream->read);
    }
#endif
}