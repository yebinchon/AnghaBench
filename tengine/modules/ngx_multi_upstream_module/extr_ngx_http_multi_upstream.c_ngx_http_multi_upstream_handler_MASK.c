#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  write; scalar_t__ timedout; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ ngx_event_t ;
typedef  int /*<<< orphan*/  ngx_connection_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_HTTP_UPSTREAM_FT_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC2(ngx_event_t *ev)
{
    ngx_connection_t    *pc;

    pc = ev->data;

    if (ev->timedout) {
        FUNC0(pc, NGX_HTTP_UPSTREAM_FT_TIMEOUT);
        return;
    }

    FUNC1(pc, ev->write);
}