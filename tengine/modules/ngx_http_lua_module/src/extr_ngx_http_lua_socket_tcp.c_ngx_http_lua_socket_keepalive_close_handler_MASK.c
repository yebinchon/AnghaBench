#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_9__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ngx_int_t ;
struct TYPE_10__ {scalar_t__ connections; int /*<<< orphan*/  free; } ;
typedef  TYPE_1__ ngx_http_lua_socket_pool_t ;
struct TYPE_11__ {int /*<<< orphan*/  queue; TYPE_1__* socket_pool; } ;
typedef  TYPE_2__ ngx_http_lua_socket_pool_item_t ;
struct TYPE_12__ {int /*<<< orphan*/  log; TYPE_4__* data; } ;
typedef  TYPE_3__ ngx_event_t ;
struct TYPE_13__ {TYPE_2__* data; int /*<<< orphan*/  fd; TYPE_9__* read; scalar_t__ close; } ;
typedef  TYPE_4__ ngx_connection_t ;
struct TYPE_14__ {scalar_t__ ready; scalar_t__ timedout; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_PEEK ; 
 scalar_t__ NGX_DECLINED ; 
 scalar_t__ NGX_EAGAIN ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 scalar_t__ FUNC1 (TYPE_9__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ ngx_socket_errno ; 
 int FUNC9 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ngx_int_t
FUNC10(ngx_event_t *ev)
{
    ngx_http_lua_socket_pool_item_t     *item;
    ngx_http_lua_socket_pool_t          *spool;

    int                n;
    char               buf[1];
    ngx_connection_t  *c;

    c = ev->data;

    if (c->close) {
        goto close;
    }

    if (c->read->timedout) {
        FUNC5(NGX_LOG_DEBUG_HTTP, ev->log, 0,
                       "lua tcp socket keepalive max idle timeout");

        goto close;
    }

    FUNC0("read event ready: %d", (int) c->read->ready);

    FUNC5(NGX_LOG_DEBUG_HTTP, ev->log, 0,
                   "lua tcp socket keepalive close handler check stale events");

    n = FUNC9(c->fd, buf, 1, MSG_PEEK);

    if (n == -1 && ngx_socket_errno == NGX_EAGAIN) {
        /* stale event */

        if (FUNC1(c->read, 0) != NGX_OK) {
            goto close;
        }

        return NGX_OK;
    }

close:

    FUNC6(NGX_LOG_DEBUG_HTTP, ev->log, 0,
                   "lua tcp socket keepalive close handler: fd:%d", c->fd);

    item = c->data;
    spool = item->socket_pool;

    FUNC3(c);

    FUNC8(&item->queue);
    FUNC7(&spool->free, &item->queue);
    spool->connections--;

    FUNC0("keepalive: connections: %u", (unsigned) spool->connections);

    if (spool->connections == 0) {
        FUNC2(ev->log, spool);

    } else {
        FUNC4(spool);
    }

    return NGX_DECLINED;
}