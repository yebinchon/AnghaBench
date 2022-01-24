#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct stat {int /*<<< orphan*/  st_mode; } ;
struct index_state {int dummy; } ;
struct cache_entry {int dummy; } ;
typedef  scalar_t__ gboolean ;
struct TYPE_9__ {int /*<<< orphan*/  sync_mgr; } ;
struct TYPE_8__ {int /*<<< orphan*/  message; } ;
struct TYPE_7__ {int /*<<< orphan*/  id; int /*<<< orphan*/  is_readonly; int /*<<< orphan*/  worktree; } ;
typedef  int /*<<< orphan*/  SyncStatus ;
typedef  TYPE_1__ SeafRepo ;
typedef  int /*<<< orphan*/  GList ;
typedef  TYPE_2__ GError ;
typedef  int /*<<< orphan*/  GDir ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  G_NORMALIZE_NFC ; 
 int /*<<< orphan*/  SYNC_STATUS_IGNORED ; 
 int /*<<< orphan*/  SYNC_STATUS_SYNCED ; 
 int /*<<< orphan*/  SYNC_STATUS_SYNCING ; 
 int /*<<< orphan*/  S_IFDIR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  errno ; 
 char* FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int /*<<< orphan*/ ,TYPE_2__**) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (char const*,char*,char*,int /*<<< orphan*/ *) ; 
 char* FUNC8 (char const*,int,int /*<<< orphan*/ ) ; 
 struct cache_entry* FUNC9 (struct index_state*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 TYPE_5__* seaf ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (char*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char const*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,char*,struct stat*,struct index_state*,scalar_t__) ; 

__attribute__((used)) static void
FUNC18 (SeafRepo *repo,
                              const char *path,
                              struct index_state *istate,
                              GList *ignore_list,
                              gboolean ignored)
{
    GDir *dir;
    GError *error = NULL;
    const char *name;
    char *dname;
    char *full_path, *full_sub_path, *sub_path;
    struct stat st;
    gboolean ignore_sub;

    full_path = FUNC2(repo->worktree, path, NULL);

    dir = FUNC4 (full_path, 0, &error);
    if (!dir) {
        FUNC12 ("Failed to open dir %s: %s.\n", full_path, error->message);
        FUNC6 (full_path);
        return;
    }

    int n = 0;
    while ((name = FUNC5(dir)) != NULL) {
        ++n;

        dname = FUNC8 (name, -1, G_NORMALIZE_NFC);
        sub_path = FUNC7 (path, "/", dname, NULL);
        full_sub_path = FUNC7 (full_path, "/", dname, NULL);

        ignore_sub = FALSE;
        if (ignored || FUNC13(full_path, dname, ignore_list))
            ignore_sub = TRUE;

        if (FUNC14 (full_sub_path, &st) < 0) {
            FUNC12 ("Failed to stat %s: %s.\n", full_sub_path, FUNC15(errno));
            FUNC6 (dname);
            FUNC6 (sub_path);
            FUNC6 (full_sub_path);
            continue;
        }

        if (FUNC0(st.st_mode)) {
            FUNC18 (repo, sub_path, istate, ignore_list,
                                          ignore_sub);
        } else if (FUNC1(st.st_mode)) {
            FUNC17 (repo, sub_path, &st, istate,
                                ignore_sub);
        }

        FUNC6 (dname);
        FUNC6 (sub_path);
        FUNC6 (full_sub_path);
    }

    FUNC3 (dir);

    FUNC6 (full_path);

    /* Don't set sync status for read-only paths, since changes to read-only
     * files are ignored.
     */
    if (!FUNC10 (repo->id, repo->is_readonly, path))
        return;

    if (n == 0 && path[0] != 0) {
        if (ignored) {
            FUNC11 (seaf->sync_mgr,
                                                  repo->id,
                                                  path,
                                                  S_IFDIR,
                                                  SYNC_STATUS_IGNORED);
        } else {
            /* There is no need to update an empty dir. */
            SyncStatus status;
            struct cache_entry *ce = FUNC9(istate, path, FUNC16(path), 0);
            if (!ce)
                status = SYNC_STATUS_SYNCING;
            else
                status = SYNC_STATUS_SYNCED;
            FUNC11 (seaf->sync_mgr,
                                                  repo->id,
                                                  path,
                                                  S_IFDIR,
                                                  status);
        }
    }
}