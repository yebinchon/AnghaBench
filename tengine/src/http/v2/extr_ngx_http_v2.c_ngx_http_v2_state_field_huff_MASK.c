#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_11__ {size_t field_rest; size_t length; char* field_end; int flags; int /*<<< orphan*/  field_state; } ;
struct TYPE_13__ {TYPE_2__* connection; TYPE_1__ state; } ;
typedef  TYPE_3__ ngx_http_v2_connection_t ;
struct TYPE_12__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_HTTP_V2_COMP_ERROR ; 
 int NGX_HTTP_V2_END_HEADERS_FLAG ; 
 int /*<<< orphan*/  NGX_HTTP_V2_SIZE_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_INFO ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ * (*) (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *)) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,char**,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ * (*) (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *)) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static u_char *
FUNC6(ngx_http_v2_connection_t *h2c, u_char *pos,
    u_char *end)
{
    size_t  size;

    size = end - pos;

    if (size > h2c->state.field_rest) {
        size = h2c->state.field_rest;
    }

    if (size > h2c->state.length) {
        size = h2c->state.length;
    }

    h2c->state.length -= size;
    h2c->state.field_rest -= size;

    if (FUNC2(&h2c->state.field_state, pos, size,
                                &h2c->state.field_end,
                                h2c->state.field_rest == 0,
                                h2c->connection->log)
        != NGX_OK)
    {
        FUNC5(NGX_LOG_INFO, h2c->connection->log, 0,
                      "client sent invalid encoded header field");

        return FUNC0(h2c, NGX_HTTP_V2_COMP_ERROR);
    }

    pos += size;

    if (h2c->state.field_rest == 0) {
        *h2c->state.field_end = '\0';
        return FUNC4(h2c, pos, end);
    }

    if (h2c->state.length) {
        return FUNC3(h2c, pos, end,
                                              ngx_http_v2_state_field_huff);
    }

    if (h2c->state.flags & NGX_HTTP_V2_END_HEADERS_FLAG) {
        FUNC5(NGX_LOG_INFO, h2c->connection->log, 0,
                      "client sent header field with incorrect length");

        return FUNC0(h2c, NGX_HTTP_V2_SIZE_ERROR);
    }

    return FUNC1(h2c, pos, end,
                                           ngx_http_v2_state_field_huff);
}