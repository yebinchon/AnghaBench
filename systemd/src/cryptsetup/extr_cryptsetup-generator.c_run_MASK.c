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
 int /*<<< orphan*/  PROC_CMDLINE_STRIP_RD_PREFIX ; 
 int FUNC0 () ; 
 int FUNC1 () ; 
 char* arg_crypttab ; 
 char const* arg_dest ; 
 int /*<<< orphan*/  arg_disks ; 
 int /*<<< orphan*/  arg_enabled ; 
 char* arg_runtime_directory ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  crypt_device_hash_ops ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 () ; 
 int FUNC6 (int,char*) ; 
 int /*<<< orphan*/  parse_proc_cmdline_item ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(const char *dest, const char *dest_early, const char *dest_late) {
        int r;

        FUNC2(arg_dest = dest);

        arg_crypttab = FUNC3("SYSTEMD_CRYPTTAB") ?: "/etc/crypttab";
        arg_runtime_directory = FUNC3("RUNTIME_DIRECTORY") ?: "/run/systemd/cryptsetup";

        arg_disks = FUNC4(&crypt_device_hash_ops);
        if (!arg_disks)
                return FUNC5();

        r = FUNC7(parse_proc_cmdline_item, NULL, PROC_CMDLINE_STRIP_RD_PREFIX);
        if (r < 0)
                return FUNC6(r, "Failed to parse kernel command line: %m");

        if (!arg_enabled)
                return 0;

        r = FUNC0();
        if (r < 0)
                return r;

        r = FUNC1();
        if (r < 0)
                return r;

        return 0;
}