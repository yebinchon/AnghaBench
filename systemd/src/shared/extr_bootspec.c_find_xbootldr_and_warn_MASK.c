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
 int /*<<< orphan*/  EADDRNOTAVAIL ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOENT ; 
 int ENOKEY ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 char* FUNC7 (char const*) ; 
 int FUNC8 (char const*,int,int,int /*<<< orphan*/ *) ; 

int FUNC9(
                const char *path,
                bool unprivileged_mode,
                char **ret_path,
                sd_id128_t *ret_uuid) {

        int r;

        /* Similar to find_esp_and_warn(), but finds the XBOOTLDR partition. Returns the same errors. */

        if (path) {
                r = FUNC8(path, false, unprivileged_mode, ret_uuid);
                if (r < 0)
                        return r;

                goto found;
        }

        path = FUNC2("SYSTEMD_XBOOTLDR_PATH");
        if (path) {
                if (!FUNC6(path) || !FUNC5(path))
                        return FUNC3(FUNC1(EINVAL),
                                               "$SYSTEMD_XBOOTLDR_PATH does not refer to absolute path, refusing to use it: %s",
                                               path);

                goto found;
        }

        r = FUNC8("/boot", true, unprivileged_mode, ret_uuid);
        if (r >= 0) {
                path = "/boot";
                goto found;
        }
        if (!FUNC0(r, -ENOENT, -EADDRNOTAVAIL)) /* This one is not it */
                return r;

        return -ENOKEY;

found:
        if (ret_path) {
                char *c;

                c = FUNC7(path);
                if (!c)
                        return FUNC4();

                *ret_path = c;
        }

        return 0;
}