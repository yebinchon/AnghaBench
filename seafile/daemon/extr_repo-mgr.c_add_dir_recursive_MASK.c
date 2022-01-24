#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct stat {int /*<<< orphan*/  st_mode; } ;
struct cache_entry {int dummy; } ;
typedef  scalar_t__ gboolean ;
struct TYPE_8__ {int /*<<< orphan*/  sync_mgr; } ;
struct TYPE_7__ {scalar_t__ changeset; scalar_t__ startup_scan; int /*<<< orphan*/  is_repo_ro; } ;
struct TYPE_6__ {int /*<<< orphan*/ ** remain_files; int /*<<< orphan*/  istate; int /*<<< orphan*/  repo_id; TYPE_2__* options; int /*<<< orphan*/  total_size; int /*<<< orphan*/  crypt; int /*<<< orphan*/  modifier; int /*<<< orphan*/  version; int /*<<< orphan*/  ignore_list; int /*<<< orphan*/  worktree; } ;
typedef  scalar_t__ SyncStatus ;
typedef  struct stat SeafStat ;
typedef  int /*<<< orphan*/  GDir ;
typedef  TYPE_1__ AddParams ;
typedef  TYPE_2__ AddOptions ;

/* Variables and functions */
 int /*<<< orphan*/  DIFF_STATUS_DIR_ADDED ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  G_NORMALIZE_NFC ; 
 int /*<<< orphan*/  PATH_SEPERATOR ; 
 scalar_t__ SYNC_STATUS_ERROR ; 
 scalar_t__ SYNC_STATUS_IGNORED ; 
 scalar_t__ SYNC_STATUS_SYNCED ; 
 scalar_t__ SYNC_STATUS_SYNCING ; 
 int /*<<< orphan*/  S_IFDIR ; 
 int /*<<< orphan*/  S_IFREG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*,struct stat*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,struct stat*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,unsigned char*,struct stat*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 
 char* FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char const*) ; 
 char* FUNC13 (char const*,int,int /*<<< orphan*/ ) ; 
 struct cache_entry* FUNC14 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 TYPE_3__* seaf ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (char*,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (char const*,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (char const*) ; 

__attribute__((used)) static int
FUNC22 (const char *path, const char *full_path, SeafStat *st,
                   AddParams *params, gboolean ignored)
{
    AddOptions *options = params->options;
    GDir *dir;
    const char *dname;
    char *subpath, *full_subpath;
    int n, total;
    gboolean is_writable = TRUE;
    struct stat sub_st;

    dir = FUNC8 (full_path, 0, NULL);
    if (!dir) {
        FUNC17 ("Failed to open dir %s: %s.\n", full_path, FUNC20(errno));

        FUNC16 (seaf->sync_mgr,
                                              params->repo_id,
                                              path,
                                              S_IFDIR,
                                              SYNC_STATUS_ERROR);

        return 0;
    }

    n = 0;
    total = 0;
    while ((dname = FUNC9(dir)) != NULL) {
        ++total;

#ifdef __APPLE__
        char *norm_dname = g_utf8_normalize (dname, -1, G_NORMALIZE_NFC);
        subpath = g_build_path (PATH_SEPERATOR, path, norm_dname, NULL);
        g_free (norm_dname);
#else
        subpath = FUNC6 (PATH_SEPERATOR, path, dname, NULL);
#endif
        full_subpath = FUNC5 (params->worktree, subpath, NULL);

        if (FUNC19 (full_subpath, &sub_st) < 0) {
            FUNC17 ("Failed to stat %s: %s.\n", full_subpath, FUNC20(errno));
            FUNC10 (subpath);
            FUNC10 (full_subpath);
            continue;
        }

        if (ignored || FUNC18(full_path, dname, params->ignore_list)) {
            if (options && options->startup_scan) {
                if (FUNC0(sub_st.st_mode))
                    FUNC22 (subpath, full_subpath, &sub_st, params, TRUE);
                else
                    FUNC16 (seaf->sync_mgr,
                                                          params->repo_id,
                                                          subpath,
                                                          S_IFREG,
                                                          SYNC_STATUS_IGNORED);
            }
            FUNC10 (subpath);
            FUNC10 (full_subpath);
            continue;
        }

        ++n;

        if (FUNC0(sub_st.st_mode))
            FUNC22 (subpath, full_subpath, &sub_st, params, FALSE);
        else if (FUNC1(sub_st.st_mode))
            FUNC3 (params->repo_id,
                      params->version,
                      params->modifier,
                      params->istate,
                      subpath,
                      full_subpath,
                      &sub_st,
                      params->crypt,
                      params->total_size,
                      params->remain_files,
                      params->options);

        FUNC10 (subpath);
        FUNC10 (full_subpath);
    }
    FUNC7 (dir);

    if (ignored) {
        FUNC16 (seaf->sync_mgr,
                                              params->repo_id,
                                              path,
                                              S_IFDIR,
                                              SYNC_STATUS_IGNORED);
        return 0;
    }

    if (options)
        is_writable = FUNC15(params->repo_id,
                                       options->is_repo_ro, path);

    /* Update active path status for empty dir */
    if (options && options->startup_scan && total == 0) {
        SyncStatus status;
        struct cache_entry *ce = FUNC14 (params->istate, path,
                                                    FUNC21(path), 0);
        if (!ce)
            status = SYNC_STATUS_SYNCING;
        else
            status = SYNC_STATUS_SYNCED;


        if (status == SYNC_STATUS_SYNCED || is_writable)
            FUNC16 (seaf->sync_mgr,
                                                  params->repo_id,
                                                  path,
                                                  S_IFDIR,
                                                  status);
    }

    if (n == 0 && path[0] != 0 && is_writable) {
        if (!params->remain_files || *(params->remain_files) == NULL) {
            int rc = FUNC2 (params->istate, path, st);
            if (rc == 1 && options && options->changeset) {
                unsigned char allzero[20] = {0};
                FUNC4 (options->changeset,
                                  DIFF_STATUS_DIR_ADDED,
                                  allzero,
                                  st,
                                  NULL,
                                  path,
                                  NULL);
            }
        } else
            FUNC11 (*(params->remain_files), FUNC12(path));
    }

    return 0;
}