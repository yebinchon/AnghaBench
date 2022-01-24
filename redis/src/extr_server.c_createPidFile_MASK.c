#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ pidfile; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_DEFAULT_PID_FILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC3 () ; 
 TYPE_1__ server ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(void) {
    /* If pidfile requested, but no pidfile defined, use
     * default pidfile path */
    if (!server.pidfile) server.pidfile = FUNC4(CONFIG_DEFAULT_PID_FILE);

    /* Try to write the pid file in a best-effort way. */
    FILE *fp = FUNC1(server.pidfile,"w");
    if (fp) {
        FUNC2(fp,"%d\n",(int)FUNC3());
        FUNC0(fp);
    }
}