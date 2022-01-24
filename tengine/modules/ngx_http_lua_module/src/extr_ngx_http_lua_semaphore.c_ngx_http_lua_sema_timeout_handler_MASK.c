#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/ * connection; } ;
typedef  TYPE_1__ ngx_http_request_t ;
struct TYPE_14__ {int /*<<< orphan*/  wait_count; } ;
typedef  TYPE_2__ ngx_http_lua_sema_t ;
struct TYPE_15__ {int /*<<< orphan*/  (* resume_handler ) (TYPE_1__*) ;scalar_t__ entered_content_phase; TYPE_4__* cur_co_ctx; } ;
typedef  TYPE_3__ ngx_http_lua_ctx_t ;
struct TYPE_16__ {int /*<<< orphan*/  sem_resume_status; int /*<<< orphan*/  co; int /*<<< orphan*/  sem_wait_queue; TYPE_2__* data; int /*<<< orphan*/ * cleanup; } ;
typedef  TYPE_4__ ngx_http_lua_co_ctx_t ;
struct TYPE_17__ {TYPE_4__* data; } ;
typedef  TYPE_5__ ngx_event_t ;
typedef  int /*<<< orphan*/  ngx_connection_t ;

/* Variables and functions */
 int /*<<< orphan*/  SEMAPHORE_WAIT_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (char*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_3__* FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_lua_module ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(ngx_event_t *ev)
{
    ngx_http_lua_co_ctx_t       *wait_co_ctx;
    ngx_http_request_t          *r;
    ngx_http_lua_ctx_t          *ctx;
    ngx_connection_t            *c;
    ngx_http_lua_sema_t         *sem;

    wait_co_ctx = ev->data;
    wait_co_ctx->cleanup = NULL;

    FUNC0("ngx_http_lua_sema_timeout_handler timeout coctx:%p", wait_co_ctx);

    sem = wait_co_ctx->data;

    FUNC7(&wait_co_ctx->sem_wait_queue);
    sem->wait_count--;

    r = FUNC4(wait_co_ctx->co);
    c = r->connection;

    ctx = FUNC2(r, ngx_http_lua_module);
    FUNC3(ctx != NULL);

    ctx->cur_co_ctx = wait_co_ctx;

    wait_co_ctx->sem_resume_status = SEMAPHORE_WAIT_TIMEOUT;

    if (ctx->entered_content_phase) {
        (void) FUNC5(r);

    } else {
        ctx->resume_handler = ngx_http_lua_sema_resume;
        FUNC1(r);
    }

    FUNC6(c);
}