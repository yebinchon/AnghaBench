#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  (* lpFree ) (TYPE_1__*) ;int /*<<< orphan*/  ulNumValues; int /*<<< orphan*/  values; int /*<<< orphan*/  lpMore; int /*<<< orphan*/  (* lpAlloc ) (int,TYPE_1__**) ;} ;
struct TYPE_13__ {struct TYPE_13__* value; int /*<<< orphan*/  entry; int /*<<< orphan*/  ulAccess; } ;
typedef  int /*<<< orphan*/  SPropValue ;
typedef  TYPE_1__* LPVOID ;
typedef  int /*<<< orphan*/  LPSPropValue ;
typedef  TYPE_1__* LPIPropDataItem ;
typedef  TYPE_1__ IPropDataItem ;
typedef  TYPE_4__ IPropDataImpl ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  IPROP_READWRITE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC4 (int,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static IPropDataItem *FUNC7(IPropDataImpl *This,
                                         LPSPropValue lpProp)
{
    LPVOID lpMem;
    LPIPropDataItem lpNew;
    HRESULT hRet;

    hRet = This->lpAlloc(sizeof(IPropDataItem), &lpMem);

    if (FUNC1(hRet))
    {
        lpNew = lpMem;
        lpNew->ulAccess = IPROP_READWRITE;

        /* Allocate the value separately so we can update it easily */
        lpMem = NULL;
        hRet = This->lpAlloc(sizeof(SPropValue), &lpMem);
        if (FUNC1(hRet))
        {
            lpNew->value = lpMem;

            hRet = FUNC0(lpNew->value, lpProp, This->lpMore, lpMem);
            if (FUNC1(hRet))
            {
                FUNC2(&This->values, &lpNew->entry);
                This->ulNumValues++;
                return lpNew;
            }
            This->lpFree(lpNew->value);
        }
        This->lpFree(lpNew);
    }
    return NULL;
}