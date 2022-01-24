#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* connection; } ;
typedef  TYPE_2__ ngx_http_request_t ;
struct TYPE_10__ {scalar_t__ delayed; } ;
typedef  TYPE_3__ ngx_event_t ;
struct TYPE_8__ {TYPE_3__* write; int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_HTTP_INTERNAL_SERVER_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 scalar_t__ NGX_OK ; 
 scalar_t__ FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

void
FUNC4(ngx_http_request_t *r)
{
    ngx_event_t  *wev;

    FUNC3(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "perl sleep handler");

    wev = r->connection->write;

    if (wev->delayed) {

        if (FUNC0(wev, 0) != NGX_OK) {
            FUNC1(r, NGX_HTTP_INTERNAL_SERVER_ERROR);
        }

        return;
    }

    FUNC2(r);
}