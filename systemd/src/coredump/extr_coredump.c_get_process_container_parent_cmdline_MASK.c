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
struct stat {scalar_t__ st_ino; } ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  SIZE_MAX ; 
 int errno ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 char* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (char const*,struct stat*) ; 

__attribute__((used)) static int FUNC4(pid_t pid, char** cmdline) {
        int r = 0;
        pid_t container_pid;
        const char *proc_root_path;
        struct stat root_stat, proc_root_stat;

        /* To compare inodes of / and /proc/[pid]/root */
        if (FUNC3("/", &root_stat) < 0)
                return -errno;

        proc_root_path = FUNC2(pid, "root");
        if (FUNC3(proc_root_path, &proc_root_stat) < 0)
                return -errno;

        /* The process uses system root. */
        if (proc_root_stat.st_ino == root_stat.st_ino) {
                *cmdline = NULL;
                return 0;
        }

        r = FUNC0(pid, &container_pid);
        if (r < 0)
                return r;

        r = FUNC1(container_pid, SIZE_MAX, 0, cmdline);
        if (r < 0)
                return r;

        return 1;
}