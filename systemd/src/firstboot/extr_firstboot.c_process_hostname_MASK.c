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
 int WRITE_STRING_FILE_CREATE ; 
 int WRITE_STRING_FILE_MKDIR_0755 ; 
 int WRITE_STRING_FILE_SYNC ; 
 int /*<<< orphan*/  arg_hostname ; 
 int /*<<< orphan*/  arg_root ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 char* FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 () ; 
 int FUNC6 (char const*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(void) {
        const char *etc_hostname;
        int r;

        etc_hostname = FUNC4(arg_root, "/etc/hostname");
        if (FUNC1(etc_hostname, F_OK) >= 0)
                return 0;

        r = FUNC5();
        if (r < 0)
                return r;

        if (FUNC0(arg_hostname))
                return 0;

        r = FUNC6(etc_hostname, arg_hostname,
                              WRITE_STRING_FILE_CREATE | WRITE_STRING_FILE_SYNC | WRITE_STRING_FILE_MKDIR_0755);
        if (r < 0)
                return FUNC2(r, "Failed to write %s: %m", etc_hostname);

        FUNC3("%s written.", etc_hostname);
        return 0;
}