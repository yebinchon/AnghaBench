#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ gboolean ;
struct TYPE_13__ {int /*<<< orphan*/  repo_mgr; int /*<<< orphan*/  branch_mgr; } ;
struct TYPE_12__ {char* commit_id; } ;
struct TYPE_11__ {int /*<<< orphan*/  last_sync_time; int /*<<< orphan*/  server_url; int /*<<< orphan*/  name; int /*<<< orphan*/  id; } ;
typedef  int /*<<< orphan*/  SyncTask ;
typedef  int /*<<< orphan*/  SeafSyncManager ;
typedef  TYPE_1__ SeafRepo ;
typedef  TYPE_2__ SeafBranch ;

/* Variables and functions */
 char* EMPTY_SHA1 ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  REPO_PROP_DOWNLOAD_HEAD ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,char*) ; 
 TYPE_6__* seaf ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC16 (SeafSyncManager *manager, SeafRepo *repo, gboolean is_manual_sync)
{
    SeafBranch *master, *local;
    SyncTask *task;
    int ret = 0;
    char *last_download = NULL;

    master = FUNC7 (seaf->branch_mgr, repo->id, "master");
    if (!master) {
        FUNC11 ("No master branch found for repo %s(%.8s).\n",
                      repo->name, repo->id);
        return -1;
    }
    local = FUNC7 (seaf->branch_mgr, repo->id, "local");
    if (!local) {
        FUNC11 ("No local branch found for repo %s(%.8s).\n",
                      repo->name, repo->id);
        return -1;
    }

    /* If last download was interrupted in the fetch and download stage,
     * need to resume it at exactly the same remote commit.
     */
    last_download = FUNC10 (seaf->repo_mgr,
                                                         repo->id,
                                                         REPO_PROP_DOWNLOAD_HEAD);
    if (last_download && FUNC14 (last_download, EMPTY_SHA1) != 0) {
        if (is_manual_sync || FUNC0 (manager, repo)) {
            task = FUNC4 (manager, repo, is_manual_sync, FALSE);
            FUNC12 (task, last_download);
        }
        goto out;
    }

    if (FUNC14 (master->commit_id, local->commit_id) != 0) {
        if (is_manual_sync || FUNC0 (manager, repo)) {
            task = FUNC4 (manager, repo, is_manual_sync, FALSE);
            FUNC13 (task);
        }
        /* Do nothing if the client still has something to upload
         * but it's before 30-second schedule.
         */
        goto out;
    } else if (is_manual_sync) {
        task = FUNC4 (manager, repo, is_manual_sync, FALSE);
        FUNC2 (task);
        goto out;
    } else if (FUNC3 (manager, repo, is_manual_sync))
        goto out;

    if (is_manual_sync || FUNC0 (manager, repo)) {
        /* If file syncing protocol version is higher than 2, we check for all head commit ids
         * for synced repos regularly.
         */
        if (!is_manual_sync && !FUNC6 (manager, repo, master->commit_id)) {
            FUNC9 ("Repo %s is not changed on server %s.\n", repo->name, repo->server_url);
            repo->last_sync_time = FUNC15(NULL);
            goto out;
        }

        task = FUNC4 (manager, repo, is_manual_sync, FALSE);
        FUNC1 (task);
    }

out:
    FUNC5 (last_download);
    FUNC8 (master);
    FUNC8 (local);
    return ret;
}