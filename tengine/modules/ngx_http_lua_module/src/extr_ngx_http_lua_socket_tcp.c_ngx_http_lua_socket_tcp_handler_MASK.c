#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
typedef  scalar_t__ ngx_socket_t ;
struct TYPE_14__ {int /*<<< orphan*/  args; int /*<<< orphan*/  uri; TYPE_5__* connection; } ;
typedef  TYPE_1__ ngx_http_request_t ;
struct TYPE_15__ {int /*<<< orphan*/  (* read_event_handler ) (TYPE_1__*,TYPE_2__*) ;int /*<<< orphan*/  (* write_event_handler ) (TYPE_1__*,TYPE_2__*) ;TYPE_1__* request; } ;
typedef  TYPE_2__ ngx_http_lua_socket_tcp_upstream_t ;
struct TYPE_16__ {TYPE_1__* current_request; } ;
typedef  TYPE_3__ ngx_http_log_ctx_t ;
struct TYPE_17__ {scalar_t__ write; TYPE_5__* data; } ;
typedef  TYPE_4__ ngx_event_t ;
struct TYPE_18__ {scalar_t__ fd; TYPE_10__* log; TYPE_2__* data; } ;
typedef  TYPE_5__ ngx_connection_t ;
struct TYPE_13__ {TYPE_3__* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_10__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_2__*) ; 

__attribute__((used)) static void
FUNC4(ngx_event_t *ev)
{
    ngx_connection_t                *c;
    ngx_http_request_t              *r;
    ngx_http_log_ctx_t              *ctx;

    ngx_http_lua_socket_tcp_upstream_t  *u;

    c = ev->data;
    u = c->data;
    r = u->request;
    c = r->connection;

    if (c->fd != (ngx_socket_t) -1) {  /* not a fake connection */
        ctx = c->log->data;
        ctx->current_request = r;
    }

    FUNC1(NGX_LOG_DEBUG_HTTP, c->log, 0,
                   "lua tcp socket handler for \"%V?%V\", wev %d", &r->uri,
                   &r->args, (int) ev->write);

    if (ev->write) {
        u->write_event_handler(r, u);

    } else {
        u->read_event_handler(r, u);
    }

    FUNC0(c);
}