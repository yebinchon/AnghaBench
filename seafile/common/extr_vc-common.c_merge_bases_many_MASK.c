#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  gboolean ;
struct TYPE_22__ {int /*<<< orphan*/  commit_mgr; } ;
struct TYPE_21__ {TYPE_1__* data; int /*<<< orphan*/  next; } ;
struct TYPE_20__ {TYPE_3__* result; int /*<<< orphan*/ * commit_hash; } ;
struct TYPE_19__ {int /*<<< orphan*/  commit_id; int /*<<< orphan*/  version; int /*<<< orphan*/  repo_id; } ;
typedef  TYPE_1__ SeafCommit ;
typedef  TYPE_2__ MergeTraverseData ;
typedef  TYPE_3__ GList ;
typedef  int /*<<< orphan*/  GHashTable ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC2 (TYPE_3__*,TYPE_1__*) ; 
 TYPE_3__* FUNC3 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 TYPE_3__* FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  get_merge_bases ; 
 TYPE_6__* seaf ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static GList *
FUNC8 (SeafCommit *one, int n, SeafCommit **twos)
{
    GHashTable *commit_hash;
    GList *result = NULL;
    SeafCommit *commit;
    int i;
    MergeTraverseData data;
    gboolean res;

    for (i = 0; i < n; i++) {
        if (one == twos[i])
            return FUNC2 (result, one);
    }

    /* First construct a hash table of all commit ids rooted at one. */
    commit_hash = FUNC0 (one);
    if (!commit_hash) {
        FUNC4 ("Failed to load commit hash.\n");
        return NULL;
    }

    data.commit_hash = commit_hash;
    data.result = NULL;

    for (i = 0; i < n; i++) {
        res = FUNC6 (seaf->commit_mgr,
                                                        twos[i]->repo_id,
                                                        twos[i]->version,
                                                        twos[i]->commit_id,
                                                        get_merge_bases,
                                                        &data, FALSE);
        if (!res)
            goto fail;
    }

    FUNC1 (commit_hash);
    result = data.result;

    if (!result || !result->next)
        return result;

    /* There are more than one. Try to find out independent ones. */
    result = FUNC5 (result);

    return result;

fail:
    result = data.result;
    while (result) {
        commit = result->data;
        FUNC7 (commit);
        result = FUNC3 (result, result);
    }
    FUNC1 (commit_hash);
    return NULL;
}