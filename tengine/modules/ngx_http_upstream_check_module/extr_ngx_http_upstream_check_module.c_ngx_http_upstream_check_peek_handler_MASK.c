#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_http_upstream_check_peer_t ;
struct TYPE_6__ {TYPE_2__* data; } ;
typedef  TYPE_1__ ngx_event_t ;
struct TYPE_7__ {int error; int /*<<< orphan*/ * data; } ;
typedef  TYPE_2__ ngx_connection_t ;

/* Variables and functions */
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC5(ngx_event_t *event)
{
    ngx_connection_t               *c;
    ngx_http_upstream_check_peer_t *peer;

    if (FUNC2()) {
        return;
    }

    c = event->data;
    peer = c->data;

    if (FUNC3(c) == NGX_OK) {
        FUNC4(peer, 1);

    } else {
        c->error = 1;
        FUNC4(peer, 0);
    }

    FUNC0(peer);

    FUNC1(event);
}