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
 int /*<<< orphan*/  LOG_ERR ; 
 int MS_BIND ; 
 int MS_RDONLY ; 
 int MS_REMOUNT ; 
 int MS_SLAVE ; 
 int /*<<< orphan*/  arg_machine ; 
 int FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 char* FUNC3 (char const*,char*) ; 
 char* FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (char const*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(const char *root) {
        const char *p, *q;
        int r;

        (void) FUNC1("/run/systemd/nspawn/", 0755);
        (void) FUNC1("/run/systemd/nspawn/propagate", 0600);
        p = FUNC4("/run/systemd/nspawn/propagate/", arg_machine);
        (void) FUNC1(p, 0600);

        r = FUNC5(root, "/run/systemd", 0755, 0, 0);
        if (r < 0)
                return FUNC0(r, "Failed to create /run/systemd: %m");

        r = FUNC5(root, "/run/systemd/nspawn", 0755, 0, 0);
        if (r < 0)
                return FUNC0(r, "Failed to create /run/systemd/nspawn: %m");

        r = FUNC5(root, "/run/systemd/nspawn/incoming", 0600, 0, 0);
        if (r < 0)
                return FUNC0(r, "Failed to create /run/systemd/nspawn/incoming: %m");

        q = FUNC3(root, "/run/systemd/nspawn/incoming");
        r = FUNC2(LOG_ERR, p, q, NULL, MS_BIND, NULL);
        if (r < 0)
                return r;

        r = FUNC2(LOG_ERR, NULL, q, NULL, MS_BIND|MS_REMOUNT|MS_RDONLY, NULL);
        if (r < 0)
                return r;

        /* machined will MS_MOVE into that directory, and that's only
         * supported for non-shared mounts. */
        return FUNC2(LOG_ERR, NULL, q, NULL, MS_SLAVE, NULL);
}