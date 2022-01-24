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
struct TYPE_8__ {int /*<<< orphan*/  cache; int /*<<< orphan*/  args; int /*<<< orphan*/  uri; TYPE_3__* connection; } ;
typedef  TYPE_1__ ngx_http_request_t ;
struct TYPE_9__ {TYPE_1__* data; } ;
typedef  TYPE_2__ ngx_event_t ;
struct TYPE_10__ {int /*<<< orphan*/  log; } ;
typedef  TYPE_3__ ngx_connection_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(ngx_event_t *ev)
{
    ngx_connection_t    *c;
    ngx_http_request_t  *r;

    r = ev->data;
    c = r->connection;

    FUNC2(c->log, r);

    FUNC3(NGX_LOG_DEBUG_HTTP, c->log, 0,
                   "http file cache wait: \"%V?%V\"", &r->uri, &r->args);

    FUNC0(r, r->cache);

    FUNC1(c);
}