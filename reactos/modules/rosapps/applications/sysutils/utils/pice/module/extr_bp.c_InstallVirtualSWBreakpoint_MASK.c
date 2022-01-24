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
struct TYPE_3__ {int /*<<< orphan*/  szFunctionName; int /*<<< orphan*/  szModName; int /*<<< orphan*/ * Callback; void* bVirtual; void* bInstalled; void* bUsed; } ;
typedef  TYPE_1__* PSW_BP ;
typedef  int /*<<< orphan*/  LPSTR ;
typedef  void* BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 void* FALSE ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* TRUE ; 

BOOLEAN FUNC5(LPSTR ModName,LPSTR FunctionName)
{
    PSW_BP p;
    BOOLEAN bResult = FALSE;

    FUNC1();
    FUNC0((0,"InstallVirtualSWBreakpoint(%s!%s)\n",ModName,FunctionName));

    if( (p=FUNC2()) )
    {
        FUNC0((0,"InstallVirtualSWBreakpoint(): found empty slot\n"));

        p->bUsed = TRUE;
        p->bInstalled = TRUE;
        p->bVirtual = TRUE;
		p->Callback = NULL;
        FUNC4(p->szModName,ModName);
        FUNC4(p->szFunctionName,FunctionName);

        bResult = TRUE;
    }

    FUNC3();

    return bResult;
}