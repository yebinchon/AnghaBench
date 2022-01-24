#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  strA ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  ULONG ;
typedef  scalar_t__ REFGUID ;
typedef  int /*<<< orphan*/  ITfCompartmentMgr ;
typedef  int /*<<< orphan*/  IEnumGUID ;
typedef  int /*<<< orphan*/  GUID ;
typedef  int /*<<< orphan*/  CHAR ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CP_ACP ; 
 int FALSE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(ITfCompartmentMgr *cmpmgr, REFGUID present, REFGUID absent)
{
    BOOL found,found2;
    IEnumGUID *ppEnum;
    found = FALSE;
    found2 = FALSE;
    if (FUNC5(FUNC3(cmpmgr, &ppEnum)))
    {
        ULONG fetched;
        GUID g;
        while (FUNC1(ppEnum, 1, &g, &fetched) == S_OK)
        {
            WCHAR str[50];
            CHAR strA[50];
            FUNC6(&g,str,FUNC0(str));
            FUNC7(CP_ACP,0,str,-1,strA,sizeof(strA),0,0);
            FUNC9("found %s\n",strA);
            if (present && FUNC4(present,&g))
                found = TRUE;
            if (absent && FUNC4(absent, &g))
                found2 = TRUE;
        }
        FUNC2(ppEnum);
    }
    if (present)
        FUNC8(found,"Did not find compartment\n");
    if (absent)
        FUNC8(!found2,"Found compartment that should be absent\n");
}