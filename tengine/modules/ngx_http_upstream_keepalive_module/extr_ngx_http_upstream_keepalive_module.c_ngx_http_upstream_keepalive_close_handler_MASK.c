#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  free; } ;
typedef  TYPE_2__ ngx_http_upstream_keepalive_srv_conf_t ;
struct TYPE_11__ {TYPE_1__* node; int /*<<< orphan*/  queue; int /*<<< orphan*/  index; TYPE_2__* conf; } ;
typedef  TYPE_3__ ngx_http_upstream_keepalive_cache_t ;
struct TYPE_12__ {int /*<<< orphan*/  log; TYPE_5__* data; } ;
typedef  TYPE_4__ ngx_event_t ;
struct TYPE_13__ {TYPE_3__* data; TYPE_8__* read; int /*<<< orphan*/  fd; scalar_t__ close; } ;
typedef  TYPE_5__ ngx_connection_t ;
struct TYPE_14__ {scalar_t__ timedout; } ;
struct TYPE_9__ {int /*<<< orphan*/  count; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_PEEK ; 
 scalar_t__ NGX_EAGAIN ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 scalar_t__ NGX_OK ; 
 scalar_t__ FUNC0 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ ngx_socket_errno ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(ngx_event_t *ev)
{
    ngx_http_upstream_keepalive_srv_conf_t  *conf;
    ngx_http_upstream_keepalive_cache_t     *item;

    int                n;
    char               buf[1];
    ngx_connection_t  *c;

    FUNC2(NGX_LOG_DEBUG_HTTP, ev->log, 0,
                   "keepalive close handler");

    c = ev->data;

    if (c->close) {
        goto close;
    }

    if (c->read->timedout) {
        FUNC2(NGX_LOG_DEBUG_HTTP, ev->log, 0,
                       "keepalive max idle timeout");
        goto close;
    }

    n = FUNC5(c->fd, buf, 1, MSG_PEEK);

    if (n == -1 && ngx_socket_errno == NGX_EAGAIN) {
        /* stale event */

        if (FUNC0(c->read, 0) != NGX_OK) {
            goto close;
        }

        return;
    }

close:

    item = c->data;
    conf = item->conf;

    FUNC1(c);

    FUNC4(&item->queue);
    FUNC4(&item->index);
    FUNC3(&conf->free, &item->queue);

    if (item->node) {
        item->node->count--;
    }
}