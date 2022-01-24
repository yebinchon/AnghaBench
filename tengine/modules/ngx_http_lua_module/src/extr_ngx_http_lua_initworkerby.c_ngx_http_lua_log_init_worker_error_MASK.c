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
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_3__ {scalar_t__ action; } ;
typedef  TYPE_1__ ngx_log_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,size_t,char*,...) ; 

__attribute__((used)) static u_char *
FUNC1(ngx_log_t *log, u_char *buf, size_t len)
{
    u_char              *p;

    if (log->action) {
        p = FUNC0(buf, len, " while %s", log->action);
        len -= p - buf;
        buf = p;
    }

    return FUNC0(buf, len, ", context: init_worker_by_lua*");
}