#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int u_char ;
typedef  int ngx_uint_t ;
struct TYPE_18__ {int weight; int /*<<< orphan*/  reuse; int /*<<< orphan*/ * parent; int /*<<< orphan*/ * stream; } ;
typedef  TYPE_3__ ngx_http_v2_node_t ;
struct TYPE_17__ {int length; int sid; } ;
struct TYPE_19__ {scalar_t__ priority_limit; int /*<<< orphan*/  closed; int /*<<< orphan*/  closed_nodes; TYPE_2__ state; TYPE_1__* connection; } ;
typedef  TYPE_4__ ngx_http_v2_connection_t ;
struct TYPE_16__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 scalar_t__ NGX_ERROR ; 
 int /*<<< orphan*/  NGX_HTTP_V2_ENHANCE_YOUR_CALM ; 
 int /*<<< orphan*/  NGX_HTTP_V2_INTERNAL_ERROR ; 
 int NGX_HTTP_V2_PRIORITY_SIZE ; 
 int /*<<< orphan*/  NGX_HTTP_V2_PROTOCOL_ERROR ; 
 int /*<<< orphan*/  NGX_HTTP_V2_SIZE_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  NGX_LOG_INFO ; 
 int* FUNC0 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (TYPE_4__*,int,int) ; 
 int FUNC2 (int*) ; 
 scalar_t__ FUNC3 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,TYPE_3__*,int,int) ; 
 int* FUNC5 (TYPE_4__*,int*,int*) ; 
 int* FUNC6 (TYPE_4__*,int*,int*,int* (*) (TYPE_4__*,int*,int*)) ; 
 scalar_t__ FUNC7 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static u_char *
FUNC12(ngx_http_v2_connection_t *h2c, u_char *pos,
    u_char *end)
{
    ngx_uint_t           depend, dependency, excl, weight;
    ngx_http_v2_node_t  *node;

    if (h2c->state.length != NGX_HTTP_V2_PRIORITY_SIZE) {
        FUNC9(NGX_LOG_INFO, h2c->connection->log, 0,
                      "client sent PRIORITY frame with incorrect length %uz",
                      h2c->state.length);

        return FUNC0(h2c, NGX_HTTP_V2_SIZE_ERROR);
    }

    if (--h2c->priority_limit == 0) {
        FUNC9(NGX_LOG_INFO, h2c->connection->log, 0,
                      "client sent too many PRIORITY frames");

        return FUNC0(h2c, NGX_HTTP_V2_ENHANCE_YOUR_CALM);
    }

    if (end - pos < NGX_HTTP_V2_PRIORITY_SIZE) {
        return FUNC6(h2c, pos, end,
                                      ngx_http_v2_state_priority);
    }

    dependency = FUNC2(pos);

    depend = dependency & 0x7fffffff;
    excl = dependency >> 31;
    weight = pos[4] + 1;

    pos += NGX_HTTP_V2_PRIORITY_SIZE;

    FUNC8(NGX_LOG_DEBUG_HTTP, h2c->connection->log, 0,
                   "http2 PRIORITY frame sid:%ui "
                   "depends on %ui excl:%ui weight:%ui",
                   h2c->state.sid, depend, excl, weight);

    if (h2c->state.sid == 0) {
        FUNC9(NGX_LOG_INFO, h2c->connection->log, 0,
                      "client sent PRIORITY frame with incorrect identifier");

        return FUNC0(h2c, NGX_HTTP_V2_PROTOCOL_ERROR);
    }

    if (depend == h2c->state.sid) {
        FUNC9(NGX_LOG_INFO, h2c->connection->log, 0,
                      "client sent PRIORITY frame for stream %ui "
                      "with incorrect dependency", h2c->state.sid);

        node = FUNC1(h2c, h2c->state.sid, 0);

        if (node && node->stream) {
            if (FUNC7(h2c, node->stream,
                                             NGX_HTTP_V2_PROTOCOL_ERROR)
                == NGX_ERROR)
            {
                return FUNC0(h2c,
                                                    NGX_HTTP_V2_INTERNAL_ERROR);
            }

        } else {
            if (FUNC3(h2c, h2c->state.sid,
                                            NGX_HTTP_V2_PROTOCOL_ERROR)
                == NGX_ERROR)
            {
                return FUNC0(h2c,
                                                    NGX_HTTP_V2_INTERNAL_ERROR);
            }
        }

        return FUNC5(h2c, pos, end);
    }

    node = FUNC1(h2c, h2c->state.sid, 1);

    if (node == NULL) {
        return FUNC0(h2c, NGX_HTTP_V2_INTERNAL_ERROR);
    }

    node->weight = weight;

    if (node->stream == NULL) {
        if (node->parent == NULL) {
            h2c->closed_nodes++;

        } else {
            FUNC11(&node->reuse);
        }

        FUNC10(&h2c->closed, &node->reuse);
    }

    FUNC4(h2c, node, depend, excl);

    return FUNC5(h2c, pos, end);
}