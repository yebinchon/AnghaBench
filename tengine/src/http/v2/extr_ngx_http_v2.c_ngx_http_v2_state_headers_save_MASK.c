#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  ngx_http_v2_handler_pt ;
struct TYPE_14__ {TYPE_1__* stream; } ;
struct TYPE_16__ {TYPE_2__ state; } ;
typedef  TYPE_4__ ngx_http_v2_connection_t ;
struct TYPE_17__ {TYPE_3__* connection; } ;
typedef  TYPE_5__ ngx_http_request_t ;
struct TYPE_18__ {int /*<<< orphan*/  client_header_timeout; } ;
typedef  TYPE_6__ ngx_http_core_srv_conf_t ;
struct TYPE_19__ {int /*<<< orphan*/  timer_set; } ;
typedef  TYPE_7__ ngx_event_t ;
struct TYPE_15__ {TYPE_7__* read; } ;
struct TYPE_13__ {TYPE_5__* request; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_core_module ; 
 TYPE_6__* FUNC1 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u_char *
FUNC3(ngx_http_v2_connection_t *h2c, u_char *pos,
    u_char *end, ngx_http_v2_handler_pt handler)
{
    ngx_event_t               *rev;
    ngx_http_request_t        *r;
    ngx_http_core_srv_conf_t  *cscf;

    if (h2c->state.stream) {
        r = h2c->state.stream->request;
        rev = r->connection->read;

        if (!rev->timer_set) {
            cscf = FUNC1(r, ngx_http_core_module);
            FUNC0(rev, cscf->client_header_timeout);
        }
    }

    return FUNC2(h2c, pos, end, handler);
}