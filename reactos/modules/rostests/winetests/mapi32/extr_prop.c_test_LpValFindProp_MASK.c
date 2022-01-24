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
typedef  size_t ULONG ;
struct TYPE_4__ {int /*<<< orphan*/  ulPropTag; } ;
typedef  TYPE_1__ SPropValue ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  PT_NULL ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,unsigned int,TYPE_1__*) ; 
 int /*<<< orphan*/ * ptTypes ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(void)
{
    SPropValue pvProp, *pRet;
    ULONG i;

    if (!&pLpValFindProp)
    {
        FUNC4("LpValFindProp is not available\n");
        return;
    }

    for (i = 0; i < FUNC0(ptTypes); i++)
    {
        pvProp.ulPropTag = FUNC1(ptTypes[i], 1u);

        pRet = FUNC3(FUNC1(ptTypes[i], 1u), 1u, &pvProp);
        FUNC2(pRet == &pvProp,
           "LpValFindProp[%d]: Didn't find existing property id/type\n",
           ptTypes[i]);

        pRet = FUNC3(FUNC1(ptTypes[i], 0u), 1u, &pvProp);
        FUNC2(pRet == NULL, "LpValFindProp[%d]: Found nonexistent property id\n",
           ptTypes[i]);

        pRet = FUNC3(FUNC1(PT_NULL, 0u), 1u, &pvProp);
        FUNC2(pRet == NULL, "LpValFindProp[%d]: Found nonexistent property id/type\n",
           ptTypes[i]);

        pRet = FUNC3(FUNC1(PT_NULL, 1u), 1u, &pvProp);
        FUNC2(pRet == &pvProp,
           "LpValFindProp[%d]: Didn't find existing property id\n",
           ptTypes[i]);
    }
}