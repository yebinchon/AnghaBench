#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct index_state {int dummy; } ;
struct cache_entry {unsigned char* sha1; } ;
typedef  scalar_t__ gint64 ;
typedef  scalar_t__ gboolean ;
struct TYPE_11__ {int /*<<< orphan*/  sync_mgr; } ;
struct TYPE_10__ {int /*<<< orphan*/  changeset; int /*<<< orphan*/  id; int /*<<< orphan*/ * email; int /*<<< orphan*/  version; int /*<<< orphan*/  worktree; } ;
struct TYPE_9__ {int /*<<< orphan*/  st_mode; scalar_t__ st_size; } ;
typedef  int /*<<< orphan*/  SeafileCrypt ;
typedef  TYPE_1__ SeafStat ;
typedef  TYPE_2__ SeafRepo ;
typedef  int /*<<< orphan*/  GQueue ;
typedef  int /*<<< orphan*/  GList ;

/* Variables and functions */
 int /*<<< orphan*/  DIFF_STATUS_ADDED ; 
 int /*<<< orphan*/  DIFF_STATUS_DIR_ADDED ; 
 scalar_t__ FALSE ; 
 scalar_t__ MAX_COMMIT_SIZE ; 
 int /*<<< orphan*/  SYNC_ERROR_ID_INDEX_ERROR ; 
 int /*<<< orphan*/  SYNC_STATUS_ERROR ; 
 int /*<<< orphan*/  SYNC_STATUS_SYNCED ; 
 int /*<<< orphan*/  S_IFREG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct index_state*,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,TYPE_1__*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct index_state*,char*,char*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  errno ; 
 char* FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  index_cb ; 
 struct cache_entry* FUNC8 (struct index_state*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (char*,int /*<<< orphan*/ *) ; 
 TYPE_4__* seaf ; 
 scalar_t__ FUNC10 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 

__attribute__((used)) static int
FUNC16 (SeafRepo *repo, struct index_state *istate,
                  SeafileCrypt *crypt, GQueue *remain_files,
                  GList *ignore_list, gint64 *total_size)
{
    char *path;
    char *full_path;
    SeafStat st;
    struct cache_entry *ce;

    while ((path = FUNC7 (remain_files)) != NULL) {
        full_path = FUNC5 (repo->worktree, path, NULL);
        if (FUNC10 (full_path, &st) < 0) {
            FUNC12 ("Failed to stat %s: %s.\n", full_path, FUNC14(errno));
            FUNC6 (path);
            FUNC6 (full_path);
            continue;
        }

        if (FUNC1(st.st_mode)) {
            gboolean added = FALSE;
            int ret = 0;
            ret = FUNC4 (repo->id, repo->version, istate, path, full_path,
                                &st, 0, crypt, index_cb, repo->email, &added);
            if (added) {
                ce = FUNC8 (istate, path, FUNC15(path), 0);
                FUNC3 (repo->changeset,
                                  DIFF_STATUS_ADDED,
                                  ce->sha1,
                                  &st,
                                  repo->email,
                                  path,
                                  NULL);

                *total_size += (gint64)(st.st_size);
                if (*total_size >= MAX_COMMIT_SIZE) {
                    FUNC6 (path);
                    FUNC6 (full_path);
                    break;
                }
            } else {
                FUNC11 (seaf->sync_mgr,
                                                      repo->id,
                                                      path,
                                                      S_IFREG,
                                                      SYNC_STATUS_SYNCED);
            }
            if (ret < 0) {
                FUNC11 (seaf->sync_mgr,
                                                      repo->id,
                                                      path,
                                                      S_IFREG,
                                                      SYNC_STATUS_ERROR);
                FUNC13 (repo->id, NULL, path,
                                                   SYNC_ERROR_ID_INDEX_ERROR);
            }
        } else if (FUNC0(st.st_mode)) {
            if (FUNC9 (full_path, ignore_list)) {
                int rc = FUNC2 (istate, path, &st);
                if (rc == 1) {
                    unsigned char allzero[20] = {0};
                    FUNC3 (repo->changeset,
                                      DIFF_STATUS_DIR_ADDED,
                                      allzero,
                                      &st,
                                      NULL,
                                      path,
                                      NULL);
                }
            }
        }
        FUNC6 (path);
        FUNC6 (full_path);
    }

    return 0;
}