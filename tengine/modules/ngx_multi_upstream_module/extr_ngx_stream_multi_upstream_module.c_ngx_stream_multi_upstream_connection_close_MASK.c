#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_pool_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_8__ {int /*<<< orphan*/  log; TYPE_1__* ssl; int /*<<< orphan*/ * pool; } ;
typedef  TYPE_2__ ngx_connection_t ;
struct TYPE_7__ {int no_wait_shutdown; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_INFO ; 
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

ngx_int_t
FUNC4(ngx_connection_t *c)
{
    ngx_pool_t *pool = c->pool;

#if (NGX_STREAM_SSL)
    if (c->ssl) {
        c->ssl->no_wait_shutdown = 1;
        (void) ngx_ssl_shutdown(c);
    }
#endif

    FUNC2(NGX_LOG_INFO, c->log,
            0, "multi: multi connection real close %p", c);

    FUNC0(c);

    if (pool) {
        FUNC1(pool);
    }

    return NGX_OK;
}