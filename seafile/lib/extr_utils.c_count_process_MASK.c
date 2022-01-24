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
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 (struct dirent*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 struct dirent* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(const char *process_name)
{
    int count = 0;
    DIR *proc_dir = FUNC3("/proc");
    if (!proc_dir) {
        FUNC2 ("failed to open /proc/ :%s\n", FUNC5(errno));
        return FALSE;
    }

    struct dirent *subdir = NULL;
    while ((subdir = FUNC4(proc_dir))) {
        char first = subdir->d_name[0];
        /* /proc/[1-9][0-9]* */
        if (first > '9' || first < '1')
            continue;
        if (FUNC1(subdir, process_name) > 0) {
            count++;
        }
    }

    FUNC0 (proc_dir);
    return count;
}