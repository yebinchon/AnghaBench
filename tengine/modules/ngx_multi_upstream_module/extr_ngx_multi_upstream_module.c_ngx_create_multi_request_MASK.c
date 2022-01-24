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
typedef  int /*<<< orphan*/  ngx_pool_t ;
struct TYPE_6__ {int /*<<< orphan*/ * pool; void* data; } ;
typedef  TYPE_1__ ngx_multi_request_t ;
struct TYPE_7__ {int /*<<< orphan*/  log; } ;
typedef  TYPE_2__ ngx_connection_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int) ; 

ngx_multi_request_t*
FUNC3(ngx_connection_t *c, void *data)
{
    ngx_multi_request_t     *multi_r;
    ngx_pool_t              *pool;

    pool = FUNC0(4096, c->log);
    if (pool == NULL) {
        return NULL;
    }

    multi_r = FUNC2(pool, sizeof(ngx_multi_request_t));
    if (multi_r == NULL) {
        FUNC1(pool);
        return NULL;
    }

    multi_r->data = data;
    multi_r->pool = pool;

    return multi_r;
}