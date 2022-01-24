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
 int MS_NODEV ; 
 int MS_NOEXEC ; 
 int MS_NOSUID ; 
 int MS_RDONLY ; 
 int MS_REMOUNT ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(const char *root, const char *own) {
        int r;

        FUNC0(root);
        FUNC0(own);

        /* Make our own cgroup a (writable) bind mount */
        r = FUNC1(LOG_ERR, own, own, NULL, MS_BIND, NULL);
        if (r < 0)
                return r;

        /* And then remount the systemd cgroup root read-only */
        return FUNC1(LOG_ERR, NULL, root, NULL,
                             MS_BIND|MS_REMOUNT|MS_NOSUID|MS_NOEXEC|MS_NODEV|MS_RDONLY, NULL);
}