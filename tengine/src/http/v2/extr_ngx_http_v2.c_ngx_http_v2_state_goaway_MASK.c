#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  ngx_uint_t ;
struct TYPE_10__ {int length; } ;
struct TYPE_11__ {TYPE_1__* connection; TYPE_2__ state; } ;
typedef  TYPE_3__ ngx_http_v2_connection_t ;
struct TYPE_9__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int NGX_HTTP_V2_GOAWAY_SIZE ; 
 int /*<<< orphan*/  NGX_HTTP_V2_SIZE_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  NGX_LOG_INFO ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ * (*) (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *)) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static u_char *
FUNC7(ngx_http_v2_connection_t *h2c, u_char *pos,
    u_char *end)
{
#if (NGX_DEBUG)
    ngx_uint_t  last_sid, error;
#endif

    if (h2c->state.length < NGX_HTTP_V2_GOAWAY_SIZE) {
        FUNC6(NGX_LOG_INFO, h2c->connection->log, 0,
                      "client sent GOAWAY frame "
                      "with incorrect length %uz", h2c->state.length);

        return FUNC0(h2c, NGX_HTTP_V2_SIZE_ERROR);
    }

    if (end - pos < NGX_HTTP_V2_GOAWAY_SIZE) {
        return FUNC3(h2c, pos, end, ngx_http_v2_state_goaway);
    }

#if (NGX_DEBUG)
    h2c->state.length -= NGX_HTTP_V2_GOAWAY_SIZE;

    last_sid = ngx_http_v2_parse_sid(pos);
    error = ngx_http_v2_parse_uint32(&pos[4]);

    pos += NGX_HTTP_V2_GOAWAY_SIZE;

    ngx_log_debug2(NGX_LOG_DEBUG_HTTP, h2c->connection->log, 0,
                   "http2 GOAWAY frame: last sid %ui, error %ui",
                   last_sid, error);
#endif

    return FUNC4(h2c, pos, end);
}