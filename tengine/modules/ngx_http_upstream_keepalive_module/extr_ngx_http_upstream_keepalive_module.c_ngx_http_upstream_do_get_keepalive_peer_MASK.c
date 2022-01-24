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
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/ * off_t ;
typedef  int /*<<< orphan*/  ngx_queue_t ;
struct TYPE_11__ {int cached; TYPE_5__* connection; int /*<<< orphan*/  log; int /*<<< orphan*/  socklen; scalar_t__ sockaddr; } ;
typedef  TYPE_3__ ngx_peer_connection_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_12__ {int /*<<< orphan*/  queue; int /*<<< orphan*/  index; int /*<<< orphan*/  socklen; int /*<<< orphan*/  sockaddr; TYPE_5__* connection; } ;
typedef  TYPE_4__ ngx_http_upstream_keepalive_cache_t ;
struct TYPE_13__ {TYPE_8__* read; TYPE_2__* pool; TYPE_1__* write; int /*<<< orphan*/  log; scalar_t__ idle; } ;
typedef  TYPE_5__ ngx_connection_t ;
struct TYPE_14__ {scalar_t__ timer_set; int /*<<< orphan*/  log; } ;
struct TYPE_10__ {int /*<<< orphan*/  log; } ;
struct TYPE_9__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_DONE ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_5__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ngx_int_t
FUNC8(ngx_peer_connection_t *pc,
    ngx_queue_t *cache, ngx_queue_t *free, off_t offset)
{
    ngx_queue_t       *q;
    ngx_connection_t  *c;

    ngx_http_upstream_keepalive_cache_t  *item;

    for (q = FUNC3(cache);
         q != FUNC7(cache);
         q = FUNC5(q))
    {
        item = (ngx_http_upstream_keepalive_cache_t *) ((u_char *) q - offset);
        c = item->connection;

        if (FUNC2((u_char *) &item->sockaddr, (u_char *) pc->sockaddr,
                         item->socklen, pc->socklen)
            == 0)
        {
            FUNC6(&item->index);
            FUNC6(&item->queue);
            FUNC4(free, &item->queue);

            FUNC1(NGX_LOG_DEBUG_HTTP, pc->log, 0,
                           "get keepalive peer: using connection %p", c);

            c->idle = 0;
            c->log = pc->log;
            c->read->log = pc->log;
            c->write->log = pc->log;
            c->pool->log = pc->log;

            if (c->read->timer_set) {
                FUNC0(c->read);
            }

            pc->connection = c;
            pc->cached = 1;

            return NGX_DONE;
        }
    }

    return NGX_OK;
}