#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* http_tx_mgr; } ;
struct TYPE_8__ {int /*<<< orphan*/  folder_perm_error_regex; int /*<<< orphan*/  locked_error_regex; } ;
struct TYPE_7__ {void* error; int /*<<< orphan*/  repo_name; int /*<<< orphan*/  repo_id; } ;
struct TYPE_6__ {TYPE_3__* priv; } ;
typedef  TYPE_2__ HttpTxTask ;
typedef  TYPE_3__ HttpTxPriv ;
typedef  int /*<<< orphan*/  GMatchInfo ;

/* Variables and functions */
 void* SYNC_ERROR_ID_FILE_LOCKED ; 
 void* SYNC_ERROR_ID_FOLDER_PERM_DENIED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 TYPE_4__* seaf ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,void*) ; 

__attribute__((used)) static void
FUNC5 (HttpTxTask *task, const char *error_str)
{
    HttpTxPriv *priv = seaf->http_tx_mgr->priv;
    GMatchInfo *match_info;
    char *path;

    if (FUNC3 (priv->locked_error_regex, error_str, 0, &match_info)) {
        path = FUNC1 (match_info, 1);
        FUNC4 (task->repo_id, task->repo_name, path,
                                             SYNC_ERROR_ID_FILE_LOCKED);
        FUNC0 (path);

        /* Set more accurate error. */
        task->error = SYNC_ERROR_ID_FILE_LOCKED;
    } else if (FUNC3 (priv->folder_perm_error_regex, error_str, 0, &match_info)) {
        path = FUNC1 (match_info, 1);
        /* The path returned by server begins with '/'. */
        FUNC4 (task->repo_id, task->repo_name,
                                             (path[0] == '/') ? (path + 1) : path,
                                             SYNC_ERROR_ID_FOLDER_PERM_DENIED);
        FUNC0 (path);

        task->error = SYNC_ERROR_ID_FOLDER_PERM_DENIED;
    }

    FUNC2 (match_info);
}