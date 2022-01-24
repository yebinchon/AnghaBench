#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  repo_mgr; } ;
typedef  int /*<<< orphan*/  SeafRepo ;
typedef  int /*<<< orphan*/  GError ;

/* Variables and functions */
 int /*<<< orphan*/  SEAFILE_DOMAIN ; 
 int /*<<< orphan*/  SEAF_ERR_BAD_ARGS ; 
 int /*<<< orphan*/  SEAF_ERR_BAD_REPO ; 
 int /*<<< orphan*/  SEAF_ERR_INTERNAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 TYPE_1__* seaf ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*) ; 

int
FUNC3 (const char *repo_id,
                        const char *token,
                        GError **error)
{
    int ret;

    if (repo_id == NULL || token == NULL) {
        FUNC0 (error, SEAFILE_DOMAIN, SEAF_ERR_BAD_ARGS, "Arguments should not be empty");
        return -1;
    }

    SeafRepo *repo;
    repo = FUNC1 (seaf->repo_mgr, repo_id);
    if (!repo) {
        FUNC0 (error, SEAFILE_DOMAIN, SEAF_ERR_BAD_REPO, "Can't find Repo %s", repo_id);
        return -1;
    }

    ret = FUNC2 (seaf->repo_mgr,
                                            repo, token);
    if (ret < 0) {
        FUNC0 (error, SEAFILE_DOMAIN, SEAF_ERR_INTERNAL,
                     "Failed to set token for repo %s", repo_id);
        return -1;
    }

    return 0;
}