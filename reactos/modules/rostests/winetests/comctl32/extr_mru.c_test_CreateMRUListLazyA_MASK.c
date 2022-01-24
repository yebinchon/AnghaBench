#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ ret; int /*<<< orphan*/  mruA; } ;
typedef  TYPE_1__ create_lazya_t ;
typedef  int /*<<< orphan*/  MRUINFOA ;
typedef  int /*<<< orphan*/ * HANDLE ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 TYPE_1__* create_lazyA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(void)
{
    int i;

    if (!&pCreateMRUListLazyA || !&pFreeMRUList)
    {
        FUNC4("CreateMRUListLazyA or FreeMRUList entry points not found\n");
        return;
    }

    for (i = 0; i < FUNC0(create_lazyA); i++)
    {
        const create_lazya_t *ptr = &create_lazyA[i];
        HANDLE hMRU;

        hMRU = FUNC2((MRUINFOA*)&ptr->mruA, 0, 0, 0);
        if (ptr->ret)
        {
            FUNC1(hMRU != NULL, "%d: got %p\n", i, hMRU);
            FUNC3(hMRU);
        }
        else
            FUNC1(hMRU == NULL, "%d: got %p\n", i, hMRU);
    }
}