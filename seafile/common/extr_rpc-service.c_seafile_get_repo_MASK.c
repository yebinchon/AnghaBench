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
typedef  int /*<<< orphan*/  GObject ;
typedef  int /*<<< orphan*/  GError ;

/* Variables and functions */
 int /*<<< orphan*/  SEAFILE_DOMAIN ; 
 int /*<<< orphan*/  SEAF_ERR_BAD_ARGS ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 TYPE_1__* seaf ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char const*) ; 

GObject*
FUNC4 (const char *repo_id, GError **error)
{
    SeafRepo *r;

    if (!repo_id) {
        FUNC1 (error, SEAFILE_DOMAIN, SEAF_ERR_BAD_ARGS, "Argument should not be null");
        return NULL;
    }
    if (!FUNC2 (repo_id)) {
        FUNC1 (error, SEAFILE_DOMAIN, SEAF_ERR_BAD_ARGS, "Invalid repo id");
        return NULL;
    }

    r = FUNC3 (seaf->repo_mgr, repo_id);
    /* Don't return repo that's not checked out. */
    if (r == NULL)
        return NULL;

    GObject *repo = FUNC0 (r);

    return repo;
}