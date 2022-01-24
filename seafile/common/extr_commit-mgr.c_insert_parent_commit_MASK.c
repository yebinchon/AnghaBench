#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ gboolean ;
struct TYPE_2__ {int /*<<< orphan*/  commit_mgr; } ;
typedef  int /*<<< orphan*/  SeafCommit ;
typedef  int /*<<< orphan*/  GList ;
typedef  int /*<<< orphan*/  GHashTable ;

/* Variables and functions */
 int /*<<< orphan*/  compare_commit_by_time ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC3 (char const*) ; 
 TYPE_1__* seaf ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char const*,int,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 

__attribute__((used)) inline static int
FUNC6 (GList **list, GHashTable *hash,
                      const char *repo_id, int version,
                      const char *parent_id, gboolean allow_truncate)
{
    SeafCommit *p;
    char *key;

    if (FUNC0 (hash, parent_id) != NULL)
        return 0;

    p = FUNC4 (seaf->commit_mgr,
                                        repo_id, version,
                                        parent_id);
    if (!p) {
        if (allow_truncate)
            return 0;
        FUNC5 ("Failed to find commit %s\n", parent_id);
        return -1;
    }

    *list = FUNC2 (*list, p,
                                           compare_commit_by_time,
                                           NULL);

    key = FUNC3 (parent_id);
    FUNC1 (hash, key, key);

    return 0;
}