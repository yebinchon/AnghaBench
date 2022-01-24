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
 int /*<<< orphan*/  ID128_PLAIN ; 
 int /*<<< orphan*/  SD_ID128_NULL ; 
 int SD_ID128_STRING_MAX ; 
 scalar_t__ arg_commit ; 
 scalar_t__ arg_print ; 
 int /*<<< orphan*/  arg_root ; 
 int FUNC0 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int,char**) ; 
 char* FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC10(int argc, char *argv[]) {
        char buf[SD_ID128_STRING_MAX];
        sd_id128_t id;
        int r;

        FUNC3();
        FUNC2();

        r = FUNC6(argc, argv);
        if (r <= 0)
                return r;

        if (arg_commit) {
                const char *etc_machine_id;

                r = FUNC4(arg_root);
                if (r < 0)
                        return r;

                etc_machine_id = FUNC7(arg_root, "/etc/machine-id");
                r = FUNC0(etc_machine_id, ID128_PLAIN, &id);
                if (r < 0)
                        return FUNC1(r, "Failed to read machine ID back: %m");
        } else {
                r = FUNC5(arg_root, SD_ID128_NULL, &id);
                if (r < 0)
                        return r;
        }

        if (arg_print)
                FUNC8(FUNC9(id, buf));

        return 0;
}