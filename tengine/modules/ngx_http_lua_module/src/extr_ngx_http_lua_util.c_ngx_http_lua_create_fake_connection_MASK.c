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
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ngx_socket_t ;
typedef  int /*<<< orphan*/  ngx_pool_t ;
struct TYPE_11__ {int /*<<< orphan*/ * data; int /*<<< orphan*/ * action; int /*<<< orphan*/  connection; } ;
typedef  TYPE_1__ ngx_log_t ;
struct TYPE_12__ {int error; TYPE_8__* buffer; int /*<<< orphan*/ * pool; int /*<<< orphan*/  log_error; TYPE_1__* log; int /*<<< orphan*/  number; scalar_t__ fd; } ;
typedef  TYPE_2__ ngx_connection_t ;
struct TYPE_14__ {int /*<<< orphan*/ * start; } ;
struct TYPE_13__ {TYPE_2__** files; int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  CR ; 
 int /*<<< orphan*/  LF ; 
 int /*<<< orphan*/  NGX_ERROR_INFO ; 
 int /*<<< orphan*/  FUNC0 (char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ngx_connection_counter ; 
 int /*<<< orphan*/ * FUNC2 (int,TYPE_1__*) ; 
 TYPE_8__* FUNC3 (int /*<<< orphan*/ *,int) ; 
 TYPE_7__* ngx_cycle ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *,int) ; 

ngx_connection_t *
FUNC7(ngx_pool_t *pool)
{
    ngx_log_t               *log;
    ngx_connection_t        *c;
    ngx_connection_t        *saved_c = NULL;

    /* (we temporarily use a valid fd (0) to make ngx_get_connection happy) */
    if (ngx_cycle->files) {
        saved_c = ngx_cycle->files[0];
    }

    c = FUNC4(0, ngx_cycle->log);

    if (ngx_cycle->files) {
        ngx_cycle->files[0] = saved_c;
    }

    if (c == NULL) {
        return NULL;
    }

    c->fd = (ngx_socket_t) -1;
    c->number = FUNC1(ngx_connection_counter, 1);

    if (pool) {
        c->pool = pool;

    } else {
        c->pool = FUNC2(128, c->log);
        if (c->pool == NULL) {
            goto failed;
        }
    }

    log = FUNC6(c->pool, sizeof(ngx_log_t));
    if (log == NULL) {
        goto failed;
    }

    c->log = log;
    c->log->connection = c->number;
    c->log->action = NULL;
    c->log->data = NULL;

    c->log_error = NGX_ERROR_INFO;

#if 0
    c->buffer = ngx_create_temp_buf(c->pool, 2);
    if (c->buffer == NULL) {
        goto failed;
    }

    c->buffer->start[0] = CR;
    c->buffer->start[1] = LF;
#endif

    c->error = 1;

    FUNC0("created fake connection: %p", c);

    return c;

failed:

    FUNC5(c);
    return NULL;
}