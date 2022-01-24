#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  TYPE_1__* gpointer ;
struct TYPE_10__ {int /*<<< orphan*/  hash_lock; int /*<<< orphan*/  info_hash; int /*<<< orphan*/  handle_hash; } ;
struct TYPE_9__ {int /*<<< orphan*/  status; } ;
typedef  TYPE_2__ SeafWTMonitorPriv ;
typedef  TYPE_1__ RepoWatchInfo ;
typedef  int /*<<< orphan*/ * HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  WT_EVENT_SCAN_DIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*) ; 
 TYPE_1__* FUNC4 (char const*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*) ; 
 int /*<<< orphan*/ * FUNC9 (char const*) ; 

__attribute__((used)) static HANDLE FUNC10 (SeafWTMonitorPriv *priv,
                         const char *repo_id,
                         const char *worktree)
{
    HANDLE dir_handle = NULL;
    wchar_t *path = NULL;
    RepoWatchInfo *info;

    /* worktree is in utf8, need to convert to wchar in win32 */
    path = FUNC9 (worktree);

    dir_handle = FUNC5 (path);
    if (!dir_handle) {
        FUNC8 ("failed to open handle for worktree "
                      "of repo  %s\n", repo_id);
        FUNC2 (path);
        return NULL;
    }
    FUNC2 (path);

    FUNC6 (&priv->hash_lock);
    FUNC3 (priv->handle_hash,
                         FUNC4(repo_id), (gpointer)dir_handle);

    info = FUNC1 (repo_id, worktree);
    FUNC3 (priv->info_hash, (gpointer)dir_handle, info);
    FUNC7 (&priv->hash_lock);

    FUNC0 (info->status, WT_EVENT_SCAN_DIR, "", NULL);

    return dir_handle;
}