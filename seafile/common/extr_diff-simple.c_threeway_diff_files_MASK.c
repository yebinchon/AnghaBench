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
    SeafDirent *m = files[0];
    SeafDirent *p1 = files[1];
    SeafDirent *p2 = files[2];
    GList **results = data->results;
    DiffEntry *de;

    /* diff m with both p1 and p2. */
    if (m && p1 && p2) {
        if (!FUNC1(m, p1) && !FUNC1 (m, p2)) {
            de = FUNC0 (DIFF_TYPE_COMMITS, DIFF_STATUS_MODIFIED,
                                             m, basedir);
            *results = FUNC2 (*results, de);
        }
    } else if (!m && p1 && p2) {
        de = FUNC0 (DIFF_TYPE_COMMITS, DIFF_STATUS_DELETED,
                                         p1, basedir);
        *results = FUNC2 (*results, de);
    } else if (m && !p1 && p2) {
        if (!FUNC1 (m, p2)) {
            de = FUNC0 (DIFF_TYPE_COMMITS, DIFF_STATUS_MODIFIED,
                                             m, basedir);
            *results = FUNC2 (*results, de);
        }
    } else if (m && p1 && !p2) {
        if (!FUNC1 (m, p1)) {
            de = FUNC0 (DIFF_TYPE_COMMITS, DIFF_STATUS_MODIFIED,
                                             m, basedir);
            *results = FUNC2 (*results, de);
        }
    } else if (m && !p1 && !p2) {
        de = FUNC0 (DIFF_TYPE_COMMITS, DIFF_STATUS_ADDED,
                                         m, basedir);
        *results = FUNC2 (*results, de);
    }
    /* Nothing to do for:
     * 1. !m && p1 && !p2;
     * 2. !m && !p1 && p2;
     * 3. !m && !p1 && !p2 (should not happen)
     */

    return 0;
}