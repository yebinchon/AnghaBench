#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  json_t ;
typedef  scalar_t__ gsize ;
struct TYPE_7__ {int /*<<< orphan*/  commit_id; } ;
struct TYPE_6__ {int /*<<< orphan*/  obj_store; } ;
typedef  TYPE_1__ SeafCommitManager ;
typedef  TYPE_2__ SeafCommit ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char*) ; 

__attribute__((used)) static int
FUNC7 (SeafCommitManager *manager,
             const char *repo_id,
             int version,
             SeafCommit *commit)
{
    json_t *object = NULL;
    char *data;
    gsize len;

    object = FUNC0 (commit);

    data = FUNC4 (object, 0);
    len = FUNC6 (data);

    FUNC3 (object);

#ifdef SEAFILE_SERVER
    if (seaf_obj_store_write_obj (manager->obj_store,
                                  repo_id, version,
                                  commit->commit_id,
                                  data, (int)len, TRUE) < 0) {
        g_free (data);
        return -1;
    }
#else
    if (FUNC5 (manager->obj_store,
                                  repo_id, version,
                                  commit->commit_id,
                                  data, (int)len, FALSE) < 0) {
        FUNC2 (data);
        return -1;
    }
#endif
    FUNC1 (data);

    return 0;
}