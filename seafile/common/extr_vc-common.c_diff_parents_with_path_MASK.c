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
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  fs_mgr; int /*<<< orphan*/  commit_mgr; } ;
struct TYPE_6__ {char const* root_id; int /*<<< orphan*/  commit_id; scalar_t__ second_parent_id; int /*<<< orphan*/  version; int /*<<< orphan*/  repo_id; scalar_t__ parent_id; } ;
typedef  TYPE_1__ SeafCommit ;
typedef  int /*<<< orphan*/  GError ;

/* Variables and functions */
 char* EMPTY_SHA1 ; 
 int /*<<< orphan*/  SEAFILE_DOMAIN ; 
 int /*<<< orphan*/  SEAF_ERR_GENERAL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 TYPE_4__* seaf ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 char* FUNC6 (int /*<<< orphan*/ ,char const*,int,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC7 (char const*,char*) ; 

__attribute__((used)) static int
FUNC8 (SeafCommit *commit,
                        const char *repo_id,
                        const char *store_id,
                        int version,
                        const char *path,
                        const char *file_id,
                        char *parent,
                        GError **error)
{
    SeafCommit *p1 = NULL, *p2 = NULL;
    char *file_id_p1 = NULL, *file_id_p2 = NULL;
    int ret = 0;

    p1 = FUNC4 (seaf->commit_mgr,
                                         commit->repo_id,
                                         commit->version,
                                         commit->parent_id);
    if (!p1) {
        FUNC2 ("Failed to find commit %s.\n", commit->parent_id);
        FUNC1 (error, SEAFILE_DOMAIN, SEAF_ERR_GENERAL, " ");
        return 0;
    }

    if (FUNC7 (p1->root_id, EMPTY_SHA1) == 0) {
        FUNC5 (p1);
        return 1;
    }

    if (commit->second_parent_id) {
        p2 = FUNC4 (seaf->commit_mgr,
                                             commit->repo_id,
                                             commit->version,
                                             commit->second_parent_id);
        if (!p2) {
            FUNC2 ("Failed to find commit %s.\n", commit->second_parent_id);
            FUNC5 (p1);
            FUNC1 (error, SEAFILE_DOMAIN, SEAF_ERR_GENERAL, " ");
            return 0;
        }
    }

    if (!p2) {
        file_id_p1 = FUNC6 (seaf->fs_mgr,
                                                     store_id,
                                                     version,
                                                     p1->root_id, path,
                                                     NULL,
                                                     error);
        if (*error)
            goto out;
        if (!file_id_p1 || FUNC7 (file_id, file_id_p1) != 0)
            ret = 1;
        else
            FUNC3 (parent, p1->commit_id, 41);
    } else {
        file_id_p1 = FUNC6 (seaf->fs_mgr,
                                                     store_id,
                                                     version,
                                                     p1->root_id, path,
                                                     NULL, error);
        if (*error)
            goto out;
        file_id_p2 = FUNC6 (seaf->fs_mgr,
                                                     store_id,
                                                     version,
                                                     p2->root_id, path,
                                                     NULL, error);
        if (*error)
            goto out;

        if (file_id_p1 && file_id_p2) {
            if (FUNC7(file_id, file_id_p1) != 0 &&
                FUNC7(file_id, file_id_p2) != 0)
                ret = 1;
            else if (FUNC7(file_id, file_id_p1) == 0)
                FUNC3 (parent, p1->commit_id, 41);
            else
                FUNC3 (parent, p2->commit_id, 41);
        } else if (file_id_p1 && !file_id_p2) {
            if (FUNC7(file_id, file_id_p1) != 0)
                ret = 1;
            else
                FUNC3 (parent, p1->commit_id, 41);
        } else if (!file_id_p1 && file_id_p2) {
            if (FUNC7(file_id, file_id_p2) != 0)
                ret = 1;
            else
                FUNC3 (parent, p2->commit_id, 41);
        } else {
            ret = 1;
        }
    }

out:
    FUNC0 (file_id_p1);
    FUNC0 (file_id_p2);

    if (p1)
        FUNC5 (p1);
    if (p2)
        FUNC5 (p2);

    return ret;
}