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
typedef  int /*<<< orphan*/  GList ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  IGNORE_FILE ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  PATH_SEPERATOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC7 (char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ FUNC9 (char*,TYPE_1__*) ; 
 int FUNC10 (char*) ; 

GList *FUNC11 (const char *worktree)
{
    GList *list = NULL;
    SeafStat st;
    FILE *fp;
    char *full_path, *pattern;
    char path[PATH_MAX];

    full_path = FUNC3 (PATH_SEPERATOR, worktree,
                              IGNORE_FILE, NULL);
    if (FUNC9 (full_path, &st) < 0)
        goto error;
    if (!FUNC0(st.st_mode))
        goto error;
    fp = FUNC4(full_path, "r");
    if (fp == NULL)
        goto error;

    while (FUNC2(path, PATH_MAX, fp) != NULL) {
        /* remove leading and trailing whitespace, including \n \r. */
        FUNC8 (path);

        /* ignore comment and blank line */
        if (path[0] == '#' || path[0] == '\0')
            continue;

        /* Change 'foo/' to 'foo/ *'. */
        if (path[FUNC10(path)-1] == '/')
            pattern = FUNC7("%s/%s*", worktree, path);
        else
            pattern = FUNC7("%s/%s", worktree, path);

        list = FUNC6(list, pattern);
    }

    FUNC1(fp);
    FUNC5 (full_path);
    return list;

error:
    FUNC5 (full_path);
    return NULL;
}