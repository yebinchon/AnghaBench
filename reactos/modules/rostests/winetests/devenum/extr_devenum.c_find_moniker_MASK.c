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
typedef  int /*<<< orphan*/  IMoniker ;
typedef  int /*<<< orphan*/  IEnumMoniker ;
typedef  int /*<<< orphan*/  ICreateDevEnum ;
typedef  int /*<<< orphan*/  GUID ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC ; 
 int /*<<< orphan*/  CLSID_SystemDeviceEnum ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_ICreateDevEnum ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 scalar_t__ TRUE ; 

__attribute__((used)) static BOOL FUNC7(const GUID *class, IMoniker *needle)
{
    ICreateDevEnum *devenum;
    IEnumMoniker *enum_mon;
    IMoniker *mon;
    BOOL found = FALSE;

    FUNC0(&CLSID_SystemDeviceEnum, NULL, CLSCTX_INPROC, &IID_ICreateDevEnum, (void **)&devenum);
    FUNC1(devenum, class, &enum_mon, 0);
    while (!found && FUNC3(enum_mon, 1, &mon, NULL) == S_OK)
    {
        if (FUNC5(mon, needle) == S_OK)
            found = TRUE;

        FUNC6(mon);
    }

    FUNC4(enum_mon);
    FUNC2(devenum);
    return found;
}