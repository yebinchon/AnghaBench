#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_7__ {int destroyed; scalar_t__ pool; int /*<<< orphan*/  fd; int /*<<< orphan*/  log; TYPE_1__* ssl; } ;
typedef  TYPE_2__ ngx_connection_t ;
struct TYPE_6__ {int no_wait_shutdown; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

ngx_int_t
FUNC4(ngx_connection_t *c)
{
#if (NGX_HTTP_SSL)
    /* TODO: do not shutdown persistent connection */
    if (c->ssl) {

        /*
         * We send the "close notify" shutdown alert to the upstream only
         * and do not wait its "close notify" shutdown alert.
         * It is acceptable according to the TLS standard.
         */

        c->ssl->no_wait_shutdown = 1;

        (void) ngx_ssl_shutdown(c);
    }
#endif

    FUNC2(NGX_LOG_DEBUG_HTTP, c->log, 0,
            "multi: close http upstream connection: %d", c->fd);

    if (c->pool) {
        FUNC1(c->pool);
    }

    c->destroyed = 1;

    FUNC0(c);

    return NGX_OK;
}