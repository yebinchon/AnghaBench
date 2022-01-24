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
struct cache_entry {int /*<<< orphan*/  ce_flags; } ;
typedef  int /*<<< orphan*/  gint64 ;
typedef  scalar_t__ gboolean ;
typedef  int /*<<< orphan*/  SeafStat ;
typedef  int /*<<< orphan*/  GHashTable ;

/* Variables and functions */
 int /*<<< orphan*/  CE_REMOVE ; 
 scalar_t__ FALSE ; 
 int FETCH_CHECKOUT_FAILED ; 
 int FETCH_CHECKOUT_SUCCESS ; 
 char* FUNC0 (char const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cache_entry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 

int
FUNC9 (const char *worktree,
                    const char *name,
                    gint64 mtime,
                    struct cache_entry *ce,
                    GHashTable *conflict_hash,
                    GHashTable *no_conflict_hash)
{
    char *path;
    gboolean case_conflict = FALSE;

    path = FUNC0 (worktree, name, FUNC8(name));

    if (!path)
        return FETCH_CHECKOUT_FAILED;

    if (!FUNC5 (path) && FUNC6 (path, 0777) < 0) {
        FUNC7 ("Failed to create empty dir %s in checkout.\n", path);
        FUNC2 (path);
        return FETCH_CHECKOUT_FAILED;
    }

    if (mtime != 0 && FUNC3 (path, mtime) < 0) {
        FUNC7 ("Failed to set mtime for %s.\n", path);
    }

    if (case_conflict) {
        ce->ce_flags |= CE_REMOVE;
        FUNC2 (path);
        return FETCH_CHECKOUT_SUCCESS;
    }

    SeafStat st;
    FUNC4 (path, &st);
    FUNC1 (ce, &st);

    FUNC2 (path);
    return FETCH_CHECKOUT_SUCCESS;
}