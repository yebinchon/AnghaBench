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
struct dirent {char* d_name; } ;
typedef  int /*<<< orphan*/  gboolean ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct dirent*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 struct dirent* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

gboolean FUNC5 (const char *process_name)
{
    DIR *proc_dir = FUNC3("/proc");
    if (!proc_dir) {
        FUNC2 (stderr, "failed to open /proc/ dir\n");
        return FALSE;
    }

    struct dirent *subdir = NULL;
    while ((subdir = FUNC4(proc_dir))) {
        char first = subdir->d_name[0];
        /* /proc/[1-9][0-9]* */
        if (first > '9' || first < '1')
            continue;
        int pid = FUNC1(subdir, process_name);
        if (pid > 0) {
            FUNC0(proc_dir);
            return TRUE;
        }
    }

    FUNC0(proc_dir);
    return FALSE;
}