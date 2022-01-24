#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  json_t ;
struct TYPE_8__ {int /*<<< orphan*/  text; } ;
typedef  TYPE_1__ json_error_t ;
struct TYPE_10__ {TYPE_2__* manager; } ;
struct TYPE_9__ {int /*<<< orphan*/  obj_store; } ;
typedef  TYPE_2__ SeafCommitManager ;
typedef  TYPE_3__ SeafCommit ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 TYPE_3__* FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char const*,int,char const*,void**,int*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int FUNC7 (char const*) ; 

__attribute__((used)) static SeafCommit *
FUNC8 (SeafCommitManager *mgr,
             const char *repo_id,
             int version,
             const char *commit_id)
{
    char *data = NULL;
    int len;
    SeafCommit *commit = NULL;
    json_t *object = NULL;
    json_error_t jerror;

    if (!commit_id || FUNC7(commit_id) != 40)
        return NULL;

    if (FUNC5 (mgr->obj_store, repo_id, version,
                                 commit_id, (void **)&data, &len) < 0)
        return NULL;

    object = FUNC4 (data, len, 0, &jerror);
    if (!object) {
        /* Perhaps the commit object contains invalid UTF-8 character. */
        if (data[len-1] == 0)
            FUNC0 (data, len - 1);
        else
            FUNC0 (data, len);

        object = FUNC4 (data, len, 0, &jerror);
        if (!object) {
            FUNC6 ("Failed to load commit json object: %s.\n", jerror.text);
            goto out;
        }
    }

    commit = FUNC1 (commit_id, object);
    if (commit)
        commit->manager = mgr;

out:
    if (object) FUNC3 (object);
    FUNC2 (data);

    return commit;
}