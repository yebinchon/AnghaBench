#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  gboolean ;
struct TYPE_8__ {int /*<<< orphan*/  result; int /*<<< orphan*/  commit_hash; } ;
struct TYPE_7__ {int /*<<< orphan*/  commit_id; } ;
typedef  TYPE_1__ SeafCommit ;
typedef  TYPE_2__ MergeTraverseData ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  compare_commit ; 
 int /*<<< orphan*/  compare_commit_by_time ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static gboolean
FUNC4 (SeafCommit *commit, void *vdata, gboolean *stop)
{
    MergeTraverseData *data = vdata;

    /* Found a common ancestor.
     * Dont traverse its parenets.
     */
    if (FUNC0 (data->commit_hash, commit->commit_id)) {
        if (!FUNC1 (data->result, commit, compare_commit)) {
            data->result = FUNC2 (data->result, commit,
                                                     compare_commit_by_time,
                                                     NULL);
            FUNC3 (commit);
        }
        *stop = TRUE;
    }

    return TRUE;
}