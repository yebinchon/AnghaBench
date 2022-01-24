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

/* Variables and functions */
 int /*<<< orphan*/  F_OK ; 
 int SD_ID128_STRING_MAX ; 
 int WRITE_STRING_FILE_CREATE ; 
 int WRITE_STRING_FILE_MKDIR_0755 ; 
 int WRITE_STRING_FILE_SYNC ; 
 int /*<<< orphan*/  arg_machine_id ; 
 int /*<<< orphan*/  arg_root ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (char const*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(void) {
        const char *etc_machine_id;
        char id[SD_ID128_STRING_MAX];
        int r;

        etc_machine_id = FUNC3(arg_root, "/etc/machine-id");
        if (FUNC0(etc_machine_id, F_OK) >= 0)
                return 0;

        if (FUNC4(arg_machine_id))
                return 0;

        r = FUNC6(etc_machine_id, FUNC5(arg_machine_id, id),
                              WRITE_STRING_FILE_CREATE | WRITE_STRING_FILE_SYNC | WRITE_STRING_FILE_MKDIR_0755);
        if (r < 0)
                return FUNC1(r, "Failed to write machine id: %m");

        FUNC2("%s written.", etc_machine_id);
        return 0;
}