#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct index_state {int dummy; } ;
typedef  int /*<<< orphan*/  options ;
typedef  int /*<<< orphan*/  gint64 ;
struct TYPE_19__ {int /*<<< orphan*/  changeset; int /*<<< orphan*/  is_repo_ro; int /*<<< orphan*/ * fset; int /*<<< orphan*/  startup_scan; } ;
struct TYPE_18__ {char* data; struct TYPE_18__* next; } ;
struct TYPE_17__ {int /*<<< orphan*/  worktree; int /*<<< orphan*/  email; int /*<<< orphan*/  version; int /*<<< orphan*/  id; int /*<<< orphan*/  changeset; int /*<<< orphan*/  is_readonly; int /*<<< orphan*/  name; } ;
struct TYPE_16__ {int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  SeafileCrypt ;
typedef  TYPE_1__ SeafStat ;
typedef  TYPE_2__ SeafRepo ;
typedef  int /*<<< orphan*/  LockedFileSet ;
typedef  int /*<<< orphan*/  GQueue ;
typedef  TYPE_3__ GList ;
typedef  TYPE_4__ AddOptions ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  SYNC_ERROR_ID_INDEX_ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct index_state*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ **,TYPE_4__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char const*,TYPE_3__*) ; 
 scalar_t__ errno ; 
 char* FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 TYPE_3__* FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 char* FUNC6 (char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct index_state*,int /*<<< orphan*/ ,char*,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*) ; 
 scalar_t__ FUNC11 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 scalar_t__ FUNC17 (char*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC18 (SeafRepo *repo, struct index_state *istate,
                   SeafileCrypt *crypt, const char *path, GList *ignore_list,
                   GList **scanned_dirs, gint64 *total_size, GQueue **remain_files,
                   LockedFileSet *fset)
{
    char *full_path;
    SeafStat st;
    AddOptions options;

    /* When a repo is initially added, a SCAN_DIR event will be created
     * for the worktree root "".
     */
    if (path[0] == 0) {
        FUNC9 (istate, repo->worktree, "", ignore_list, fset,
                        repo->id, repo->is_readonly, repo->changeset);

        FUNC8 (&options, 0, sizeof(options));
        options.fset = fset;
        options.is_repo_ro = repo->is_readonly;
        options.startup_scan = TRUE;
        options.changeset = repo->changeset;

        FUNC1 (repo->id, repo->version, repo->email, istate,
                       repo->worktree, path,
                       crypt, FALSE, ignore_list,
                       total_size, remain_files, &options);

        return 0;
    }

    /* If we've recursively scanned the parent directory, don't need to scan
     * any files under it any more.
     */
    GList *ptr;
    char *dir, *full_dir;
    for (ptr = *scanned_dirs; ptr; ptr = ptr->next) {
        dir = ptr->data;
        /* exact match */
        if (FUNC14 (dir, path) == 0) {
            FUNC10 ("%s has been scanned before, skip adding.\n", path);
            return 0;
        }

        /* prefix match. */
        full_dir = FUNC6 (dir, "/", NULL);
        if (FUNC17 (full_dir, path, FUNC16(full_dir)) == 0) {
            FUNC4 (full_dir);
            FUNC10 ("%s has been scanned before, skip adding.\n", path);
            return 0;
        }
        FUNC4 (full_dir);
    }

    if (FUNC2 (repo->worktree, path, ignore_list))
        return 0;

    full_path = FUNC3 (repo->worktree, path, NULL);

    if (FUNC11 (full_path, &st) < 0) {
        if (errno != ENOENT)
            FUNC13 (repo->id, repo->name, path,
                                               SYNC_ERROR_ID_INDEX_ERROR);
        FUNC12 ("Failed to stat %s: %s.\n", path, FUNC15(errno));
        FUNC4 (full_path);
        return -1;
    }

    if (FUNC0(st.st_mode))
        *scanned_dirs = FUNC5 (*scanned_dirs, FUNC7(path));

    FUNC8 (&options, 0, sizeof(options));
    options.fset = fset;
    options.is_repo_ro = repo->is_readonly;
    options.changeset = repo->changeset;

    /* Add is always recursive */
    FUNC1 (repo->id, repo->version, repo->email, istate, repo->worktree, path,
                   crypt, FALSE, ignore_list, total_size, remain_files, &options);

    FUNC4 (full_path);
    return 0;
}