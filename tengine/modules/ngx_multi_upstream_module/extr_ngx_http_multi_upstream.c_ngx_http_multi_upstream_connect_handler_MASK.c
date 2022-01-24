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
struct TYPE_13__ {scalar_t__ ssl; } ;
typedef  TYPE_1__ ngx_http_upstream_t ;
struct TYPE_14__ {TYPE_1__* upstream; } ;
typedef  TYPE_2__ ngx_http_request_t ;
struct TYPE_15__ {scalar_t__ timedout; TYPE_4__* data; } ;
typedef  TYPE_3__ ngx_event_t ;
struct TYPE_16__ {int /*<<< orphan*/ * ssl; int /*<<< orphan*/  log; int /*<<< orphan*/  write; TYPE_2__* data; } ;
typedef  TYPE_4__ ngx_connection_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_HTTP_UPSTREAM_FT_ERROR ; 
 int /*<<< orphan*/  NGX_HTTP_UPSTREAM_FT_TIMEOUT ; 
 int /*<<< orphan*/  NGX_LOG_ERR ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_1__*,TYPE_4__*) ; 
 scalar_t__ FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_4__*) ; 

void
FUNC6(ngx_event_t *ev)
{
    ngx_connection_t                    *pc;

    ngx_http_request_t                  *r;
    ngx_http_upstream_t                 *u;

    pc = ev->data;
    r = pc->data;
    u = r->upstream;

    if (ev->timedout) {
        FUNC5(NGX_LOG_ERR, pc->log, 0, "multi: connect timeout %p", pc);
        FUNC2(pc, NGX_HTTP_UPSTREAM_FT_TIMEOUT);
        return;
    }

    FUNC0(pc->write);

    if (FUNC4(pc) != NGX_OK) {
        FUNC5(NGX_LOG_ERR, pc->log, 0, "multi: connect failed %p", pc);
        FUNC2(pc, NGX_HTTP_UPSTREAM_FT_ERROR);
        return;
    }

#if (NGX_HTTP_SSL)

    //do ssl handshake first if need
    if (u->ssl && pc->ssl == NULL) {
        ngx_http_upstream_ssl_init_connection(r, u, pc);
        return;
    }

#endif

    FUNC1(pc);
}