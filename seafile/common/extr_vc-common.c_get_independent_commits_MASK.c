#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {TYPE_1__* data; struct TYPE_17__* next; } ;
struct TYPE_16__ {int /*<<< orphan*/  commit_id; } ;
typedef  TYPE_1__ SeafCommit ;
typedef  TYPE_2__ GList ;

/* Variables and functions */
 TYPE_1__** FUNC0 (int,int) ; 
 int /*<<< orphan*/  compare_commit_by_time ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_2__* FUNC4 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_2__*) ; 
 TYPE_2__* FUNC6 (TYPE_1__*,int,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static GList *
FUNC9 (GList *commits)
{
    SeafCommit **rslt;
    GList *list, *result;
    int cnt, i, j;
    SeafCommit *c;

    FUNC2 ("Get independent commits.\n");

    cnt = FUNC5 (commits);

    rslt = FUNC0(cnt, sizeof(*rslt));
    for (list = commits, i = 0; list; list = list->next)
        rslt[i++] = list->data;
    FUNC3 (commits);

    for (i = 0; i < cnt - 1; i++) {
        for (j = i+1; j < cnt; j++) {
            if (!rslt[i] || !rslt[j])
                continue;
            result = FUNC6(rslt[i], 1, &rslt[j]);
            for (list = result; list; list = list->next) {
                c = list->data;
                /* If two commits have fast-forward relationship,
                 * drop the older one.
                 */
                if (FUNC8 (rslt[i]->commit_id, c->commit_id) == 0) {
                    FUNC7 (rslt[i]);
                    rslt[i] = NULL;
                }
                if (FUNC8 (rslt[j]->commit_id, c->commit_id) == 0) {
                    FUNC7 (rslt[j]);
                    rslt[j] = NULL;
                }
                FUNC7 (c);
            }
        }
    }

    /* Surviving ones in rslt[] are the independent results */
    result = NULL;
    for (i = 0; i < cnt; i++) {
        if (rslt[i])
            result = FUNC4 (result, rslt[i],
                                                     compare_commit_by_time,
                                                     NULL);
    }
    FUNC1(rslt);
    return result;
}