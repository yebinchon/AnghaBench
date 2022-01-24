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
typedef  int /*<<< orphan*/ * HANDLE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 

void
FUNC4(HANDLE hDirectDrawLocal)
{
    int fails=0;
    BOOL retValue=FALSE;
    FUNC1("Start testing of NtGdiDdDeleteDirectDrawObject\n");

    retValue = FUNC0(hDirectDrawLocal);
    FUNC3(retValue,FALSE,fails,"NtGdiDdDeleteDirectDrawObject(hDirectDrawLocal);\0");

    retValue = FUNC0(NULL);
    FUNC3(retValue,TRUE,fails,"NtGdiDdDeleteDirectDrawObject(NULL);\0");

    FUNC2(fails, "NtGdiDdDeleteDirectDrawObject\0");
}