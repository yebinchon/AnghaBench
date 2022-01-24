#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VCCompareResult ;
struct TYPE_9__ {int /*<<< orphan*/  commit_mgr; } ;
struct TYPE_8__ {char const* commit_id; } ;
typedef  TYPE_1__ SeafCommit ;

/* Variables and functions */
 int /*<<< orphan*/  VC_FAST_FORWARD ; 
 int /*<<< orphan*/  VC_INDEPENDENT ; 
 int /*<<< orphan*/  VC_UP_TO_DATE ; 
 TYPE_1__* FUNC0 (TYPE_1__*,TYPE_1__*) ; 
 TYPE_4__* seaf ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,char const*,int,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (char const*,char const*) ; 

VCCompareResult
FUNC4 (const char *repo_id, int version,
                    const char *c1, const char *c2)
{
    SeafCommit *commit1, *commit2, *ca;
    VCCompareResult ret;

    /* Treat the same as up-to-date. */
    if (FUNC3 (c1, c2) == 0)
        return VC_UP_TO_DATE;

    commit1 = FUNC1 (seaf->commit_mgr, repo_id, version, c1);
    if (!commit1)
        return VC_INDEPENDENT;

    commit2 = FUNC1 (seaf->commit_mgr, repo_id, version, c2);
    if (!commit2) {
        FUNC2 (commit1);
        return VC_INDEPENDENT;
    }

    ca = FUNC0 (commit1, commit2);

    if (!ca)
        ret = VC_INDEPENDENT;
    else if (FUNC3(ca->commit_id, commit1->commit_id) == 0)
        ret = VC_UP_TO_DATE;
    else if (FUNC3(ca->commit_id, commit2->commit_id) == 0)
        ret = VC_FAST_FORWARD;
    else
        ret = VC_INDEPENDENT;

    if (ca) FUNC2 (ca);
    FUNC2 (commit1);
    FUNC2 (commit2);
    return ret;
}