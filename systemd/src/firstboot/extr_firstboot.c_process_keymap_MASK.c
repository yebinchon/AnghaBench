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
 int /*<<< orphan*/  COPY_REFLINK ; 
 int ENOENT ; 
 int /*<<< orphan*/  F_OK ; 
 char** FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ arg_copy_keymap ; 
 int /*<<< orphan*/  arg_keymap ; 
 scalar_t__ arg_root ; 
 int FUNC1 (char*,char const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int FUNC6 (char const*,int) ; 
 char* FUNC7 (scalar_t__,char*) ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int FUNC10 (char const*,char**) ; 

__attribute__((used)) static int FUNC11(void) {
        const char *etc_vconsoleconf;
        char **keymap;
        int r;

        etc_vconsoleconf = FUNC7(arg_root, "/etc/vconsole.conf");
        if (FUNC3(etc_vconsoleconf, F_OK) >= 0)
                return 0;

        if (arg_copy_keymap && arg_root) {

                (void) FUNC6(etc_vconsoleconf, 0755);
                r = FUNC1("/etc/vconsole.conf", etc_vconsoleconf, 0, 0644, 0, 0, COPY_REFLINK);
                if (r != -ENOENT) {
                        if (r < 0)
                                return FUNC4(r, "Failed to copy %s: %m", etc_vconsoleconf);

                        FUNC5("%s copied.", etc_vconsoleconf);
                        return 0;
                }
        }

        r = FUNC8();
        if (r == -ENOENT)
                return 0; /* don't fail if no keymaps are installed */
        if (r < 0)
                return r;

        if (FUNC2(arg_keymap))
                return 0;

        keymap = FUNC0(FUNC9("KEYMAP=", arg_keymap));

        r = FUNC6(etc_vconsoleconf, 0755);
        if (r < 0)
                return FUNC4(r, "Failed to create the parent directory of %s: %m", etc_vconsoleconf);

        r = FUNC10(etc_vconsoleconf, keymap);
        if (r < 0)
                return FUNC4(r, "Failed to write %s: %m", etc_vconsoleconf);

        FUNC5("%s written.", etc_vconsoleconf);
        return 0;
}