#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
struct TYPE_6__ {TYPE_2__* request; } ;
typedef  TYPE_3__ ngx_http_gunzip_ctx_t ;
struct TYPE_5__ {int /*<<< orphan*/  pool; TYPE_1__* connection; } ;
struct TYPE_4__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void *
FUNC2(void *opaque, u_int items, u_int size)
{
    ngx_http_gunzip_ctx_t *ctx = opaque;

    FUNC0(NGX_LOG_DEBUG_HTTP, ctx->request->connection->log, 0,
                   "gunzip alloc: n:%ud s:%ud",
                   items, size);

    return FUNC1(ctx->request->pool, items * size);
}