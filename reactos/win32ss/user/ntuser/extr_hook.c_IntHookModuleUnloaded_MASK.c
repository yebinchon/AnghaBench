#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {struct TYPE_12__* Flink; } ;
struct TYPE_13__ {TYPE_3__ PtiList; } ;
struct TYPE_11__ {int W32PF_flags; int /*<<< orphan*/  peProcess; } ;
struct TYPE_10__ {TYPE_2__* ppi; } ;
typedef  TYPE_1__* PTHREADINFO ;
typedef  TYPE_2__* PPROCESSINFO ;
typedef  TYPE_3__* PLIST_ENTRY ;
typedef  TYPE_4__* PDESKTOP ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  scalar_t__ HHOOK ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  MSQ_INJECTMODULE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PtiLink ; 
 int /*<<< orphan*/  THREADINFO ; 
 int /*<<< orphan*/  FUNC4 (char*,int,...) ; 
 int /*<<< orphan*/  TRUE ; 
 int W32PF_APIHOOKLOADED ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gpepCSRSS ; 

BOOL
FUNC6(PDESKTOP pdesk, int iHookID, HHOOK hHook)
{
    PTHREADINFO ptiCurrent;
    PLIST_ENTRY ListEntry;
    PPROCESSINFO ppiCsr;

    FUNC4("IntHookModuleUnloaded: iHookID=%d\n", iHookID);

    ppiCsr = FUNC2(gpepCSRSS);

    ListEntry = pdesk->PtiList.Flink;
    while(ListEntry != &pdesk->PtiList)
    {
        ptiCurrent = FUNC0(ListEntry, THREADINFO, PtiLink);

        /* FIXME: Do some more security checks here */

        /* FIXME: HACK: The first check is a reactos specific hack for system threads */
        if(!FUNC3(ptiCurrent->ppi->peProcess) &&
           ptiCurrent->ppi != ppiCsr)
        {
            if(ptiCurrent->ppi->W32PF_flags & W32PF_APIHOOKLOADED)
            {
                FUNC4("IntHookModuleUnloaded: sending message to PID %p, ppi=%p\n", FUNC1(ptiCurrent->ppi->peProcess), ptiCurrent->ppi);
                FUNC5( ptiCurrent,
                                        0,
                                        iHookID,
                                        TRUE,
                                        (LPARAM)hHook,
                                        NULL,
                                        0,
                                        FALSE,
                                        MSQ_INJECTMODULE);
            }
        }
        ListEntry = ListEntry->Flink;
    }

    return TRUE;
}