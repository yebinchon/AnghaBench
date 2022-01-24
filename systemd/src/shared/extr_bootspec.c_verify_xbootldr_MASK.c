#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  sd_id128_t ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  SD_ID128_NULL ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (char*) ; 
 int FUNC3 (char const*,int,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(
                const char *p,
                bool searching,
                bool unprivileged_mode,
                sd_id128_t *ret_uuid) {

        bool relax_checks;
        dev_t devid;
        int r;

        FUNC0(p);

        relax_checks = FUNC2("SYSTEMD_RELAX_XBOOTLDR_CHECKS") > 0;

        r = FUNC3(p, searching, unprivileged_mode, &devid);
        if (r < 0)
                return r;

        if (FUNC1() > 0 || relax_checks)
                goto finish;

        if (unprivileged_mode)
                return FUNC5(devid, searching, ret_uuid);
        else
                return FUNC4(devid, searching, ret_uuid);

finish:
        if (ret_uuid)
                *ret_uuid = SD_ID128_NULL;

        return 0;
}