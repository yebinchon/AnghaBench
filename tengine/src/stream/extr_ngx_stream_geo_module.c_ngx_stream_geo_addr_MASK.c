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
struct TYPE_14__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; scalar_t__ not_found; } ;
typedef  TYPE_2__ ngx_stream_variable_value_t ;
struct TYPE_15__ {TYPE_1__* connection; } ;
typedef  TYPE_3__ ngx_stream_session_t ;
struct TYPE_16__ {int index; } ;
typedef  TYPE_4__ ngx_stream_geo_ctx_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_17__ {int /*<<< orphan*/  socklen; int /*<<< orphan*/  sockaddr; } ;
typedef  TYPE_5__ ngx_addr_t ;
struct TYPE_13__ {int /*<<< orphan*/  pool; int /*<<< orphan*/  log; int /*<<< orphan*/  socklen; int /*<<< orphan*/  sockaddr; TYPE_2__ addr_text; } ;

/* Variables and functions */
 scalar_t__ NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_STREAM ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (TYPE_3__*,int) ; 

__attribute__((used)) static ngx_int_t
FUNC4(ngx_stream_session_t *s, ngx_stream_geo_ctx_t *ctx,
    ngx_addr_t *addr)
{
    ngx_stream_variable_value_t  *v;

    if (ctx->index == -1) {
        FUNC1(NGX_LOG_DEBUG_STREAM, s->connection->log, 0,
                       "stream geo started: %V", &s->connection->addr_text);

        addr->sockaddr = s->connection->sockaddr;
        addr->socklen = s->connection->socklen;
        /* addr->name = s->connection->addr_text; */

        return NGX_OK;
    }

    v = FUNC3(s, ctx->index);

    if (v == NULL || v->not_found) {
        FUNC0(NGX_LOG_DEBUG_STREAM, s->connection->log, 0,
                       "stream geo not found");

        return NGX_ERROR;
    }

    FUNC1(NGX_LOG_DEBUG_STREAM, s->connection->log, 0,
                   "stream geo started: %v", v);

    if (FUNC2(s->connection->pool, addr, v->data, v->len) == NGX_OK) {
        return NGX_OK;
    }

    return NGX_ERROR;
}