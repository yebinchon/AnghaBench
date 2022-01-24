#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * data; struct TYPE_5__* next; } ;
typedef  int /*<<< orphan*/  SeafCommit ;
typedef  TYPE_1__ GList ;

/* Variables and functions */
 int /*<<< orphan*/ ** FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **) ; 

SeafCommit *
FUNC5 (SeafCommit *head, SeafCommit *remote)
{
    GList *result, *iter;
    SeafCommit *one, **twos;
    int n, i;
    SeafCommit *ret = NULL;

    one = head;
    twos = (SeafCommit **) FUNC0 (1, sizeof(SeafCommit *));
    twos[0] = remote;
    n = 1;
    result = FUNC4 (one, n, twos);
    FUNC1 (twos);
    if (!result || !result->next)
        goto done;

    /*
     * More than one common ancestors.
     * Loop until the oldest common ancestor is found.
     */
    while (1) {
        n = FUNC3 (result) - 1;
        one = result->data;
        twos = FUNC0 (n, sizeof(SeafCommit *));
        for (iter = result->next, i = 0; i < n; iter = iter->next, i++) {
            twos[i] = iter->data;
        }
        FUNC2 (result);

        result = FUNC4 (one, n, twos);
        FUNC1 (twos);
        if (!result || !result->next)
            break;
    }

done:
    if (result)
        ret = result->data;
    FUNC2 (result);

    return ret;
}