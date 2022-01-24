#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  timezone; } ;
typedef  TYPE_1__ sd_dhcp_server ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (char const*,int /*<<< orphan*/ ) ; 

int FUNC4(sd_dhcp_server *server, const char *tz) {
        int r;

        FUNC0(server, -EINVAL);
        FUNC0(FUNC3(tz, LOG_DEBUG), -EINVAL);

        if (FUNC2(tz, server->timezone))
                return 0;

        r = FUNC1(&server->timezone, tz);
        if (r < 0)
                return r;

        return 1;
}