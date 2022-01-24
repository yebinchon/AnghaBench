#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ gboolean ;
typedef  int /*<<< orphan*/  dents ;
struct TYPE_12__ {struct TYPE_12__* next; TYPE_1__* data; } ;
struct TYPE_11__ {TYPE_3__* entries; } ;
struct TYPE_10__ {char* name; } ;
typedef  TYPE_1__ SeafDirent ;
typedef  TYPE_2__ SeafDir ;
typedef  TYPE_3__ GList ;
typedef  int /*<<< orphan*/  DiffOptions ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 int FUNC0 (int,TYPE_1__**,char const*,int /*<<< orphan*/ *) ; 
 int FUNC1 (int,TYPE_1__**,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__**,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (char*,char*) ; 

__attribute__((used)) static int
FUNC5 (int n, SeafDir *trees[],
                      const char *basedir, DiffOptions *opt)
{
    GList *ptrs[3];
    SeafDirent *dents[3];
    int i;
    SeafDirent *dent;
    char *first_name;
    gboolean done;
    int ret = 0;

    for (i = 0; i < n; ++i) {
        if (trees[i])
            ptrs[i] = trees[i]->entries;
        else
            ptrs[i] = NULL;
    }

    while (1) {
        first_name = NULL;
        FUNC3 (dents, 0, sizeof(dents[0])*n);
        done = TRUE;

        /* Find the "largest" name, assuming dirents are sorted. */
        for (i = 0; i < n; ++i) {
            if (ptrs[i] != NULL) {
                done = FALSE;
                dent = ptrs[i]->data;
                if (!first_name)
                    first_name = dent->name;
                else if (FUNC4(dent->name, first_name) > 0)
                    first_name = dent->name;
            }
        }

        if (done)
            break;

        /*
         * Setup dir entries for all names that equal to first_name
         */
        for (i = 0; i < n; ++i) {
            if (ptrs[i] != NULL) {
                dent = ptrs[i]->data;
                if (FUNC4(first_name, dent->name) == 0) {
                    dents[i] = dent;
                    ptrs[i] = ptrs[i]->next;
                }
            }
        }

        if (n == 2 && dents[0] && dents[1] && FUNC2(dents[0], dents[1]))
            continue;

        if (n == 3 && dents[0] && dents[1] && dents[2] &&
            FUNC2(dents[0], dents[1]) && FUNC2(dents[0], dents[2]))
            continue;

        /* Diff files of this level. */
        ret = FUNC1 (n, dents, basedir, opt);
        if (ret < 0)
            return ret;

        /* Recurse into sub level. */
        ret = FUNC0 (n, dents, basedir, opt);
        if (ret < 0)
            return ret;
    }

    return ret;
}