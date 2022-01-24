#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_5__ {scalar_t__ y; } ;
struct TYPE_4__ {scalar_t__ ImageFileName; } ;
typedef  TYPE_1__* PEPROCESS ;
typedef  scalar_t__ LPSTR ;

/* Variables and functions */
 int /*<<< orphan*/  COLOR_CAPTION ; 
 int /*<<< orphan*/  COLOR_TEXT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__* FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 size_t OUTPUT_WINDOW ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tempShell ; 
 TYPE_2__* wWindow ; 

void FUNC10(void)
{
	PEPROCESS pCurrentProcess = FUNC2();
    LPSTR pProcessName;

    FUNC1();

    if(FUNC3((ULONG)pCurrentProcess))
    {
        FUNC9(COLOR_TEXT);
	    FUNC8(COLOR_CAPTION);

		FUNC0(wWindow[OUTPUT_WINDOW].y-1);

        pProcessName = pCurrentProcess->ImageFileName;
        if(FUNC3((ULONG)pProcessName) )
        {
		    FUNC5(tempShell,
                    " PROCESS(%.8X \"%s\") ",
                    (ULONG)pCurrentProcess,pProcessName);
        }
        else
        {
		    FUNC5(tempShell,
                    " PROCESS(%.8X) ",
                    (ULONG)pCurrentProcess);
        }
		FUNC6(tempShell,1,wWindow[OUTPUT_WINDOW].y-1);

        FUNC7();
    }

    FUNC4();
}