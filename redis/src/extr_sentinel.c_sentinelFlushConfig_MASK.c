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
struct TYPE_2__ {int hz; int /*<<< orphan*/  configfile; } ;

/* Variables and functions */
 int CONFIG_DEFAULT_HZ ; 
 scalar_t__ EOF ; 
 int /*<<< orphan*/  LL_WARNING ; 
 int /*<<< orphan*/  O_RDONLY ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__ server ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(void) {
    int fd = -1;
    int saved_hz = server.hz;
    int rewrite_status;

    server.hz = CONFIG_DEFAULT_HZ;
    rewrite_status = FUNC3(server.configfile);
    server.hz = saved_hz;

    if (rewrite_status == -1) goto werr;
    if ((fd = FUNC2(server.configfile,O_RDONLY)) == -1) goto werr;
    if (FUNC1(fd) == -1) goto werr;
    if (FUNC0(fd) == EOF) goto werr;
    return;

werr:
    if (fd != -1) FUNC0(fd);
    FUNC4(LL_WARNING,"WARNING: Sentinel was not able to save the new configuration on disk!!!: %s", FUNC5(errno));
}