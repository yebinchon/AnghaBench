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
typedef  int /*<<< orphan*/  shInputDll ;
struct TYPE_4__ {int cbSize; void* lpParameters; void* lpFile; void* lpVerb; int /*<<< orphan*/ * hwnd; } ;
typedef  TYPE_1__ SHELLEXECUTEINFO ;

/* Variables and functions */
 int MB_ICONERROR ; 
 int MB_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 void* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int) ; 

void FUNC4()
{
    SHELLEXECUTEINFO shInputDll;

    FUNC3(&shInputDll, 0x0, sizeof(SHELLEXECUTEINFO));
    shInputDll.cbSize = sizeof(shInputDll);
    shInputDll.hwnd = NULL;
    shInputDll.lpVerb = FUNC2("open");
    shInputDll.lpFile = FUNC2("RunDll32.exe");
    shInputDll.lpParameters = FUNC2("shell32.dll,Control_RunDLL appwiz.cpl");

    if (FUNC1(&shInputDll) == 0)
    {
        FUNC0(NULL, FUNC2("Can not start appwiz.cpl"), NULL, MB_OK | MB_ICONERROR);
    }
}