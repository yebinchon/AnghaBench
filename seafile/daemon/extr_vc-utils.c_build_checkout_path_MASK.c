#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  st_mode; } ;
typedef  TYPE_1__ SeafStat ;

/* Variables and functions */
 int SEAF_PATH_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,TYPE_1__*) ; 
 scalar_t__ FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char const*) ; 
 int FUNC6 (char const*) ; 

char *
FUNC7 (const char *worktree, const char *ce_name, int len)
{
    int base_len = FUNC6(worktree);
    int full_len;
    char path[SEAF_PATH_MAX];
    int offset;
    SeafStat st;

    if (!len) {
        FUNC4 ("entry name should not be empty.\n");
        return NULL;
    }

    FUNC5 (path, SEAF_PATH_MAX, "%s/", worktree);

    /* first create all leading directories. */
    full_len = base_len + len + 1;
    offset = base_len + 1;
    while (offset < full_len) {
        do {
            path[offset] = ce_name[offset-base_len-1];
            offset++;
        } while (offset < full_len && ce_name[offset-base_len-1] != '/');
        if (offset >= full_len)
            break;
        path[offset] = 0;

        if (FUNC2 (path, &st) == 0 && FUNC0(st.st_mode))
            continue;
        
        if (FUNC3 (path, 0777) < 0) {
            FUNC4 ("Failed to create directory %s.\n", path);
            return NULL;
        }
    }
    path[offset] = 0;

    return FUNC1(path);
}