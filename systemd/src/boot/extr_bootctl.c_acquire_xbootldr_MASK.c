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

/* Variables and functions */
 int ENOKEY ; 
 int /*<<< orphan*/  SD_ID128_NULL ; 
 int /*<<< orphan*/  arg_xbootldr_path ; 
 int FUNC0 (int /*<<< orphan*/ ,int,char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(bool unprivileged_mode, sd_id128_t *ret_uuid) {
        char *np;
        int r;

        r = FUNC0(arg_xbootldr_path, unprivileged_mode, &np, ret_uuid);
        if (r == -ENOKEY) {
                FUNC3(r, "Didn't find an XBOOTLDR partition, using the ESP as $BOOT.");
                if (ret_uuid)
                        *ret_uuid = SD_ID128_NULL;
                arg_xbootldr_path = FUNC4(arg_xbootldr_path);
                return 0;
        }
        if (r < 0)
                return r;

        FUNC1(arg_xbootldr_path, np);
        FUNC2("Using XBOOTLDR partition at %s as $BOOT.", arg_xbootldr_path);

        return 1;
}