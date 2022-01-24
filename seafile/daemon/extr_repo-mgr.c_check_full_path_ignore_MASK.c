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
typedef  size_t guint ;
typedef  int /*<<< orphan*/  gboolean ;
typedef  int /*<<< orphan*/  GList ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC0 (char*,char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char**) ; 
 char** FUNC3 (char const*,char*,int /*<<< orphan*/ ) ; 
 size_t FUNC4 (char**) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static gboolean
FUNC7 (const char *worktree, const char *path, GList *ignore_list)
{
    char **tokens;
    guint i;
    guint n;
    gboolean ret = FALSE;

    tokens = FUNC3 (path, "/", 0);
    n = FUNC4 (tokens);
    for (i = 0; i < n; ++i) {
        /* don't check ignore_list */
        if (FUNC6 (NULL, tokens[i], ignore_list)) {
            ret = TRUE;
            goto out;
        }
    }

    char *full_path = FUNC0 ("/", worktree, path, NULL);
    if (FUNC5 (ignore_list, full_path))
        ret = TRUE;
    FUNC1 (full_path);

out:
    FUNC2 (tokens);
    return ret;
}