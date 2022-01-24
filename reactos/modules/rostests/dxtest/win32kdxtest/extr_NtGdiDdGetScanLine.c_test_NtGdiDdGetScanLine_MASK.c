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
struct TYPE_4__ {int /*<<< orphan*/  dwScanLine; int /*<<< orphan*/  ddRVal; } ;
typedef  int /*<<< orphan*/ * HANDLE ;
typedef  TYPE_1__ DD_GETSCANLINEDATA ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  DDERR_GENERIC ; 
 int /*<<< orphan*/  DDHAL_DRIVER_HANDLED ; 
 int /*<<< orphan*/  DDHAL_DRIVER_NOTHANDLED ; 
 int /*<<< orphan*/  DD_OK ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 

void
FUNC6(HANDLE hDirectDrawLocal)
{
    int fails=0;
    BOOL retValue=FALSE;
    DD_GETSCANLINEDATA puGetScanLineData;

    FUNC2("Start testing of NtGdiDdGetScanLine\n");
    FUNC1(&puGetScanLineData,sizeof(DD_GETSCANLINEDATA));

    retValue = FUNC0(NULL,NULL);
    FUNC4(retValue, DDHAL_DRIVER_HANDLED,fails,"1. NtGdiDdGetScanLine(NULL,NULL);\0");

    retValue = FUNC0(hDirectDrawLocal,NULL);
    FUNC4(retValue, DDHAL_DRIVER_HANDLED,fails,"2. NtGdiDdGetScanLine(hDirectDrawLocal,NULL);\0");

    puGetScanLineData.ddRVal = DDERR_GENERIC;
    retValue = FUNC0(hDirectDrawLocal,&puGetScanLineData);
    FUNC4(retValue,DDHAL_DRIVER_NOTHANDLED,fails,"3. NtGdiDdGetScanLine(hDirectDrawLocal,puGetScanLineData);\0");
    FUNC5(puGetScanLineData.ddRVal,DD_OK,fails,"4. NtGdiDdGetScanLine(hDirectDrawLocal,puGetScanLineData);\0");
    FUNC4(puGetScanLineData.dwScanLine,0,fails,"4. NtGdiDdGetScanLine(hDirectDrawLocal,puGetScanLineData);\0");


    /* FIXME DDERR_VERTICALBLANKINPROGRESS test */

    FUNC3(fails, "NtGdiDdGetScanLine\0");
}