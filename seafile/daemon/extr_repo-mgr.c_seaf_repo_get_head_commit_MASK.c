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
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  commit_mgr; int /*<<< orphan*/  repo_mgr; } ;
struct TYPE_6__ {TYPE_1__* head; int /*<<< orphan*/  version; } ;
struct TYPE_5__ {int /*<<< orphan*/  commit_id; } ;
typedef  TYPE_2__ SeafRepo ;
typedef  int /*<<< orphan*/  SeafCommit ;

/* Variables and functions */
 TYPE_4__* seaf ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 

SeafCommit *
FUNC3 (const char *repo_id)
{
    SeafRepo *repo;
    SeafCommit *head;

    repo = FUNC1 (seaf->repo_mgr, repo_id);
    if (!repo) {
        FUNC2 ("Failed to get repo %s.\n", repo_id);
        return NULL;
    }

    head = FUNC0 (seaf->commit_mgr,
                                           repo_id, repo->version,
                                           repo->head->commit_id);
    if (!head) {
        FUNC2 ("Failed to get head for repo %s.\n", repo_id);
        return NULL;
    }

    return head;
}