#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  commit_id; } ;
struct TYPE_14__ {int /*<<< orphan*/  commit_id; void* client_version; void* device_name; void* parent_id; } ;
struct TYPE_13__ {char* email; TYPE_8__* head; int /*<<< orphan*/  id; } ;
struct TYPE_12__ {int /*<<< orphan*/  branch_mgr; int /*<<< orphan*/  commit_mgr; int /*<<< orphan*/  client_name; int /*<<< orphan*/  client_id; } ;
typedef  TYPE_1__ SeafRepo ;
typedef  TYPE_2__ SeafCommit ;

/* Variables and functions */
 int /*<<< orphan*/  SEAFILE_CLIENT_VERSION ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_10__* seaf ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,char*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8 (SeafRepo *repo, const char *root_id,
             const char *desc, char commit_id[])
{
    SeafCommit *commit;

    commit = FUNC4 (NULL, repo->id, root_id,
                              repo->email ? repo->email
                              : "unknown",
                              seaf->client_id,
                              desc, 0);

    commit->parent_id = FUNC0 (repo->head->commit_id);

    /* Add this computer's name to commit. */
    commit->device_name = FUNC0(seaf->client_name);
    commit->client_version = FUNC0 (SEAFILE_CLIENT_VERSION);

    FUNC6 (repo, commit);

    if (FUNC3 (seaf->commit_mgr, commit) < 0)
        return -1;

    FUNC2 (repo->head, commit->commit_id);
    FUNC1 (seaf->branch_mgr, repo->head);

    FUNC7 (commit_id, commit->commit_id);
    FUNC5 (commit);

    return 0;
}