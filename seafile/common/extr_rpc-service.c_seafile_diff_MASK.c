#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  repo_mgr; } ;
struct TYPE_13__ {int /*<<< orphan*/  new_name; int /*<<< orphan*/  name; int /*<<< orphan*/  status; } ;
struct TYPE_12__ {TYPE_2__* data; struct TYPE_12__* next; } ;
typedef  int /*<<< orphan*/  SeafileDiffEntry ;
typedef  int /*<<< orphan*/  SeafRepo ;
typedef  TYPE_1__ GList ;
typedef  int /*<<< orphan*/  GError ;
typedef  TYPE_2__ DiffEntry ;

/* Variables and functions */
 int /*<<< orphan*/  SEAFILE_DOMAIN ; 
 int /*<<< orphan*/  SEAFILE_TYPE_DIFF_ENTRY ; 
 int /*<<< orphan*/  SEAF_ERR_BAD_ARGS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 
 TYPE_5__* seaf ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ *,char const*,char const*,int,char**) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,char const*) ; 

GList *
FUNC12 (const char *repo_id, const char *arg1, const char *arg2, int fold_dir_diff, GError **error)
{
    SeafRepo *repo;
    char *err_msgs = NULL;
    GList *diff_entries, *p;
    GList *ret = NULL;

    if (!repo_id || !arg1 || !arg2) {
        FUNC6 (error, SEAFILE_DOMAIN, SEAF_ERR_BAD_ARGS, "Argument should not be null");
        return NULL;
    }

    if (!FUNC9 (repo_id)) {
        FUNC6 (error, SEAFILE_DOMAIN, SEAF_ERR_BAD_ARGS, "Invalid repo id");
        return NULL;
    }

    if ((arg1[0] != 0 && !FUNC8 (arg1)) || !FUNC8(arg2)) {
        FUNC6 (error, SEAFILE_DOMAIN, SEAF_ERR_BAD_ARGS, "Invalid commit id");
        return NULL;
    }

    repo = FUNC11 (seaf->repo_mgr, repo_id);
    if (!repo) {
        FUNC6 (error, SEAFILE_DOMAIN, SEAF_ERR_BAD_ARGS, "No such repository");
        return NULL;
    }

    diff_entries = FUNC10 (repo, arg1, arg2, fold_dir_diff, &err_msgs);
    if (err_msgs) {
        FUNC6 (error, SEAFILE_DOMAIN, -1, "%s", err_msgs);
        FUNC1 (err_msgs);
        return NULL;
    }

    for (p = diff_entries; p != NULL; p = p->next) {
        DiffEntry *de = p->data;
        SeafileDiffEntry *entry = FUNC5 (
            SEAFILE_TYPE_DIFF_ENTRY,
            "status", FUNC7(de->status),
            "name", de->name,
            "new_name", de->new_name,
            NULL);
        ret = FUNC3 (ret, entry);
    }

    for (p = diff_entries; p != NULL; p = p->next) {
        DiffEntry *de = p->data;
        FUNC0 (de);
    }
    FUNC2 (diff_entries);

    return FUNC4 (ret);
}