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
struct TYPE_2__ {int /*<<< orphan*/ ** results; } ;
typedef  int /*<<< orphan*/  SeafDirent ;
typedef  int /*<<< orphan*/  GList ;
typedef  int /*<<< orphan*/  DiffEntry ;
typedef  TYPE_1__ DiffData ;

/* Variables and functions */
 int /*<<< orphan*/  DIFF_STATUS_ADDED ; 
 int /*<<< orphan*/  DIFF_STATUS_DELETED ; 
 int /*<<< orphan*/  DIFF_STATUS_MODIFIED ; 
 int /*<<< orphan*/  DIFF_TYPE_COMMITS ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3 (int n, const char *basedir, SeafDirent *files[], void *vdata)
{
    DiffData *data = vdata;
    GList **results = data->results;
    DiffEntry *de;
    SeafDirent *tree1 = files[0];
    SeafDirent *tree2 = files[1];

    if (!tree1) {
        de = FUNC0 (DIFF_TYPE_COMMITS, DIFF_STATUS_ADDED,
                                         tree2, basedir);
        *results = FUNC2 (*results, de);
        return 0;
    }

    if (!tree2) {
        de = FUNC0 (DIFF_TYPE_COMMITS, DIFF_STATUS_DELETED,
                                         tree1, basedir);
        *results = FUNC2 (*results, de);
        return 0;
    }

    if (!FUNC1 (tree1, tree2)) {
        de = FUNC0 (DIFF_TYPE_COMMITS, DIFF_STATUS_MODIFIED,
                                         tree2, basedir);
        *results = FUNC2 (*results, de);
    }

    return 0;
}