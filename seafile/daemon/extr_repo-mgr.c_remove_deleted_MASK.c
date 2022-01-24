#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct index_state {unsigned int cache_nr; struct cache_entry** cache; } ;
struct TYPE_5__ {scalar_t__ sec; } ;
struct cache_entry {char* name; int /*<<< orphan*/  ce_flags; TYPE_1__ ce_ctime; int /*<<< orphan*/  ce_mode; } ;
typedef  scalar_t__ gboolean ;
struct TYPE_7__ {int /*<<< orphan*/  filelock_mgr; } ;
struct TYPE_6__ {int /*<<< orphan*/  st_mode; } ;
typedef  TYPE_2__ SeafStat ;
typedef  int /*<<< orphan*/  LockedFileSet ;
typedef  int /*<<< orphan*/  GList ;
typedef  int /*<<< orphan*/  ChangeSet ;

/* Variables and functions */
 int /*<<< orphan*/  CE_REMOVE ; 
 int /*<<< orphan*/  DIFF_STATUS_DELETED ; 
 int /*<<< orphan*/  DIFF_STATUS_DIR_DELETED ; 
 scalar_t__ ENOENT ; 
 scalar_t__ FALSE ; 
 int SEAF_PATH_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC2 (struct cache_entry*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char const*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const*,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,scalar_t__,char const*) ; 
 int /*<<< orphan*/  FUNC9 (struct index_state*) ; 
 TYPE_4__* seaf ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,char const*,char*) ; 
 int FUNC12 (char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,char*,char const*,char*) ; 
 scalar_t__ FUNC14 (char*,char const*) ; 
 int FUNC15 (char*) ; 
 scalar_t__ FUNC16 (char*,char*,int) ; 

__attribute__((used)) static void
FUNC17 (struct index_state *istate, const char *worktree, const char *prefix,
                GList *ignore_list, LockedFileSet *fset,
                const char *repo_id, gboolean is_repo_ro,
                ChangeSet *changeset)
{
    struct cache_entry **ce_array = istate->cache;
    struct cache_entry *ce;
    char path[SEAF_PATH_MAX];
    unsigned int i;
    SeafStat st;
    int ret;
    gboolean not_exist;

    char *full_prefix = FUNC5 (prefix, "/", NULL);
    int len = FUNC15(full_prefix);

    for (i = 0; i < istate->cache_nr; ++i) {
        ce = ce_array[i];

        if (!FUNC7 (repo_id, is_repo_ro, ce->name))
            continue;

        if (FUNC11 (seaf->filelock_mgr,
                                                  repo_id, ce->name)) {
            FUNC10 ("Remove deleted: %s is locked on server, ignore.\n", ce->name);
            continue;
        }

        if (prefix[0] != 0 && FUNC14 (ce->name, prefix) != 0 &&
            FUNC16 (ce->name, full_prefix, len) != 0)
            continue;

        FUNC13 (path, SEAF_PATH_MAX, "%s/%s", worktree, ce->name);
        not_exist = FALSE;
        ret = FUNC12 (path, &st);
        if (ret < 0 && errno == ENOENT)
            not_exist = TRUE;

        if (FUNC0 (ce->ce_mode)) {
            if (ce->ce_ctime.sec != 0 || FUNC2(ce) != 0) {
                if (not_exist || (ret == 0 && !FUNC0 (st.st_mode))) {
                    /* Add to changeset only if dir is removed. */
                    ce->ce_flags |= CE_REMOVE;
                    if (changeset)
                        /* Remove the parent dir from change set if it becomes
                         * empty. If in the work tree the empty dir still exist,
                         * we'll add it back to changeset in add_recursive() later.
                         */
                        FUNC8 (changeset,
                                               DIFF_STATUS_DIR_DELETED,
                                               ce->name,
                                               TRUE,
                                               prefix);
                } else if (!FUNC6 (path, ignore_list)) {
                    /* Don't add to changeset if empty dir became non-empty. */
                    ce->ce_flags |= CE_REMOVE;
                }
            }
        } else {
            /* If ce->ctime is 0 and stage is 0, it was not successfully checked out.
             * In this case we don't want to mistakenly remove the file
             * from the repo.
             */
            if ((not_exist || (ret == 0 && !FUNC1 (st.st_mode))) &&
                (ce->ce_ctime.sec != 0 || FUNC2(ce) != 0) &&
                FUNC3 (fset, ce->name))
            {
                ce_array[i]->ce_flags |= CE_REMOVE;
                if (changeset)
                    FUNC8 (changeset,
                                           DIFF_STATUS_DELETED,
                                           ce->name,
                                           TRUE,
                                           prefix);
            }
        }
    }

    FUNC9 (istate);

    FUNC4 (full_prefix);
}