#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  (* read_event_handler ) (TYPE_2__*) ;int /*<<< orphan*/  (* write_event_handler ) (TYPE_2__*) ;TYPE_1__* main; int /*<<< orphan*/  args; int /*<<< orphan*/  uri; } ;
typedef  TYPE_2__ ngx_http_request_t ;
struct TYPE_13__ {scalar_t__ write; scalar_t__ timedout; scalar_t__ delayed; TYPE_4__* data; } ;
typedef  TYPE_3__ ngx_event_t ;
struct TYPE_14__ {scalar_t__ close; int /*<<< orphan*/  log; TYPE_2__* data; } ;
typedef  TYPE_4__ ngx_connection_t ;
struct TYPE_11__ {int /*<<< orphan*/  count; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC6(ngx_event_t *ev)
{
    ngx_connection_t    *c;
    ngx_http_request_t  *r;

    c = ev->data;
    r = c->data;

    FUNC1(c->log, r);

    FUNC3(NGX_LOG_DEBUG_HTTP, c->log, 0,
                   "http run request: \"%V?%V\"", &r->uri, &r->args);

    if (c->close) {
        r->main->count++;
        FUNC2(r, 0);
        FUNC0(c);
        return;
    }

    if (ev->delayed && ev->timedout) {
        ev->delayed = 0;
        ev->timedout = 0;
    }

    if (ev->write) {
        r->write_event_handler(r);

    } else {
        r->read_event_handler(r);
    }

    FUNC0(c);
}