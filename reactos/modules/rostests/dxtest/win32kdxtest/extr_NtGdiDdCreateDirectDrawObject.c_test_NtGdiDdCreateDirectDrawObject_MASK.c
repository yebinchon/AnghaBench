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
typedef  int /*<<< orphan*/ * HDC ;
typedef  int /*<<< orphan*/ * HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,char*) ; 

HANDLE
FUNC6()
{
    HANDLE retValue=0;
    int fails=0;
    HDC hdc=FUNC0(L"Display",NULL,NULL,NULL);

    if (hdc == NULL)
    {
        FUNC2("No hdc was created with Display, trying now with DISPLAY\n");
        hdc=FUNC0(L"DISPLAY",NULL,NULL,NULL);
        if (hdc == NULL)
        {
            FUNC2("No hdc was created with DISPLAY, trying now with NULL\n");
            hdc=FUNC0(NULL,NULL,NULL,NULL);
        }
    }

    if (hdc == NULL)
    {
        FUNC2("No hdc was created at all perpare all test will fail\n");
        return NULL;
    }

    FUNC2("Start testing of NtGdiDdCreateDirectDrawObject\n");

    retValue = FUNC1(NULL);
    FUNC5(retValue,NULL,fails,"NtGdiDdCreateDirectDrawObject(NULL);\0");

    retValue = FUNC1(hdc);
    FUNC4(retValue,NULL,fails,"NtGdiDdCreateDirectDrawObject(hdc);\0");

    FUNC3(fails, "NtGdiDdCreateDirectDrawObject\0");

    return retValue;
}