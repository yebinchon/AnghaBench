#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {TYPE_4__* cleanup; TYPE_1__* connection; struct TYPE_14__* main; } ;
typedef  TYPE_2__ ngx_http_request_t ;
struct TYPE_15__ {TYPE_4__* free_cleanup; } ;
typedef  TYPE_3__ ngx_http_lua_ctx_t ;
struct TYPE_16__ {struct TYPE_16__* next; int /*<<< orphan*/ * handler; } ;
typedef  TYPE_4__ ngx_http_cleanup_t ;
struct TYPE_13__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  FUNC0 (char*,TYPE_4__*) ; 
 TYPE_4__* FUNC1 (TYPE_2__*,size_t) ; 
 TYPE_3__* FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_lua_module ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_4__*) ; 

ngx_http_cleanup_t *
FUNC4(ngx_http_request_t *r, size_t size)
{
    ngx_http_cleanup_t  *cln;
    ngx_http_lua_ctx_t  *ctx;

    if (size == 0) {
        ctx = FUNC2(r, ngx_http_lua_module);

        r = r->main;

        if (ctx != NULL && ctx->free_cleanup) {
            cln = ctx->free_cleanup;
            ctx->free_cleanup = cln->next;

            FUNC0("reuse cleanup: %p", cln);

            FUNC3(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                           "lua http cleanup reuse: %p", cln);

            cln->handler = NULL;
            cln->next = r->cleanup;

            r->cleanup = cln;

            return cln;
        }
    }

    return FUNC1(r, size);
}