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
struct TYPE_4__ {void* ulPropTag; } ;
typedef  TYPE_1__ SPropValue ;

/* Variables and functions */
 size_t FUNC0 (void**) ; 
 void* FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  PT_I2 ; 
 int /*<<< orphan*/  PT_UNSPECIFIED ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 TYPE_1__* FUNC3 (TYPE_1__*,unsigned int,void*) ; 
 void** ptTypes ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(void)
{
    SPropValue pvProp, *pRet;
    ULONG i;

    if (!&pPpropFindProp)
    {
        FUNC4("PpropFindProp is not available\n");
        return;
    }

    for (i = 0; i < FUNC0(ptTypes); i++)
    {
        pvProp.ulPropTag = ptTypes[i];

        pRet = FUNC3(&pvProp, 1u, ptTypes[i]);
        FUNC2(pRet == &pvProp,
           "PpropFindProp[%d]: Didn't find existing property\n",
           ptTypes[i]);

        pRet = FUNC3(&pvProp, 1u, i ? ptTypes[i-1] : ptTypes[i+1]);
        FUNC2(pRet == NULL, "PpropFindProp[%d]: Found nonexistent property\n",
           ptTypes[i]);
    }

    pvProp.ulPropTag = FUNC1(PT_I2, 1u);
    pRet = FUNC3(&pvProp, 1u, FUNC1(PT_UNSPECIFIED, 0u));
    FUNC2(pRet == NULL, "PpropFindProp[UNSPECIFIED]: Matched on different id\n");
    pRet = FUNC3(&pvProp, 1u, FUNC1(PT_UNSPECIFIED, 1u));
    FUNC2(pRet == &pvProp, "PpropFindProp[UNSPECIFIED]: Didn't match id\n");
}