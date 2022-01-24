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
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  repo_mgr; } ;
struct TYPE_12__ {int /*<<< orphan*/  repo_id; } ;
struct TYPE_11__ {TYPE_2__* data; struct TYPE_11__* next; } ;
struct TYPE_10__ {int /*<<< orphan*/  timestamp; int /*<<< orphan*/  repo_id; int /*<<< orphan*/  group_perms; int /*<<< orphan*/  user_perms; } ;
struct TYPE_9__ {TYPE_3__* results; int /*<<< orphan*/  success; } ;
typedef  int /*<<< orphan*/  SeafRepo ;
typedef  TYPE_1__ HttpFolderPerms ;
typedef  TYPE_2__ HttpFolderPermRes ;
typedef  TYPE_3__ GList ;
typedef  TYPE_4__ CloneTask ;

/* Variables and functions */
 int /*<<< orphan*/  FOLDER_PERM_TYPE_GROUP ; 
 int /*<<< orphan*/  FOLDER_PERM_TYPE_USER ; 
 int /*<<< orphan*/  SYNC_ERROR_ID_LOCAL_DATA_CORRUPT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 TYPE_6__* seaf ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6 (HttpFolderPerms *result, void *user_data)
{
    CloneTask *task = user_data;
    GList *ptr;
    HttpFolderPermRes *res;

    SeafRepo *repo = FUNC1 (seaf->repo_mgr,
                                                 task->repo_id);
    if (repo == NULL) {
        FUNC4 ("[Clone mgr] cannot find repo %s after fetched.\n", 
                   task->repo_id);
        FUNC5 (task, SYNC_ERROR_ID_LOCAL_DATA_CORRUPT);
        return;
    }

    if (!result->success) {
        goto out;
    }

    for (ptr = result->results; ptr; ptr = ptr->next) {
        res = ptr->data;

        FUNC3 (seaf->repo_mgr, res->repo_id,
                                               FOLDER_PERM_TYPE_USER,
                                               res->user_perms);
        FUNC3 (seaf->repo_mgr, res->repo_id,
                                               FOLDER_PERM_TYPE_GROUP,
                                               res->group_perms);
        FUNC2 (seaf->repo_mgr,
                                                        res->repo_id,
                                                        res->timestamp);
    }

out:
    FUNC0 (repo, task);
}