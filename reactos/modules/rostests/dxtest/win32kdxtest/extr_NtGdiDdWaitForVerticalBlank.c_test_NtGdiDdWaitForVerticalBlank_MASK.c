#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  ddRVal; int /*<<< orphan*/  dwFlags; } ;
typedef  int /*<<< orphan*/ * PDD_WAITFORVERTICALBLANKDATA ;
typedef  int /*<<< orphan*/ * HANDLE ;
typedef  TYPE_1__ DDHAL_WAITFORVERTICALBLANKDATA ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  DDHAL_DRIVER_HANDLED ; 
 int /*<<< orphan*/  DDHAL_DRIVER_NOTHANDLED ; 
 int /*<<< orphan*/  DDWAITVB_I_TESTVB ; 
 int /*<<< orphan*/  DD_OK ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 

void
FUNC5(HANDLE hDirectDrawLocal)
{
    int fails=0;
    BOOL retValue=FALSE;
    DDHAL_WAITFORVERTICALBLANKDATA pDdWaitForVerticalBlankData;

    FUNC1(&pDdWaitForVerticalBlankData,sizeof(DDHAL_WAITFORVERTICALBLANKDATA));

    retValue = FUNC0(NULL,NULL);
    FUNC3(retValue, DDHAL_DRIVER_HANDLED,fails,"1. NtGdiDdWaitForVerticalBlank(NULL,NULL);\0");

    retValue = FUNC0(hDirectDrawLocal,NULL);
    FUNC3(retValue, DDHAL_DRIVER_HANDLED,fails,"2. NtGdiDdWaitForVerticalBlank(hDirectDrawLocal,NULL);\0");

    retValue = FUNC0(hDirectDrawLocal,(PDD_WAITFORVERTICALBLANKDATA)&pDdWaitForVerticalBlankData);
    FUNC3(retValue, DDHAL_DRIVER_HANDLED,fails,"3. NtGdiDdWaitForVerticalBlank(hDirectDrawLocal,NULL);\0");
    FUNC3(pDdWaitForVerticalBlankData.ddRVal, DD_OK,fails,"4. NtGdiDdWaitForVerticalBlank(hDirectDrawLocal,NULL);\0");

    FUNC1(&pDdWaitForVerticalBlankData,sizeof(DDHAL_WAITFORVERTICALBLANKDATA));
    pDdWaitForVerticalBlankData.dwFlags = DDWAITVB_I_TESTVB;
    retValue = FUNC0(hDirectDrawLocal,(PDD_WAITFORVERTICALBLANKDATA)&pDdWaitForVerticalBlankData);

    FUNC3(retValue, DDHAL_DRIVER_NOTHANDLED,fails,"5. NtGdiDdWaitForVerticalBlank(hDirectDrawLocal,NULL);\0");
    FUNC4(pDdWaitForVerticalBlankData.ddRVal, DD_OK,fails,"6. NtGdiDdWaitForVerticalBlank(hDirectDrawLocal,NULL);\0");

    retValue = FUNC0(hDirectDrawLocal,(PDD_WAITFORVERTICALBLANKDATA)&pDdWaitForVerticalBlankData);

    FUNC2(fails, "NtGdiDdWaitForVerticalBlank\0");
}