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
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_4__ {scalar_t__ bInstalled; scalar_t__ bVirtual; int /*<<< orphan*/  ucOriginalOpcode; scalar_t__ ulAddress; } ;
typedef  int /*<<< orphan*/ * PUCHAR ;
typedef  TYPE_1__* PSW_BP ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FALSE ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ TRUE ; 

BOOLEAN FUNC8(ULONG ulAddress)
{
    PSW_BP p;
    BOOLEAN bResult = FALSE;

    FUNC1();
    FUNC0((0,"RemoveSWBreakpoint()\n"));

    if( (p = FUNC2(ulAddress)) )
    {
        if(FUNC3(ulAddress) && p->bInstalled == TRUE && p->bVirtual==FALSE)
        {
			BOOLEAN isWriteable;
			if( !( isWriteable = FUNC4(ulAddress) ) )
				FUNC7(ulAddress,TRUE);
		    // restore original opcode
            *(PUCHAR)(p->ulAddress) = p->ucOriginalOpcode;
			if( !isWriteable )
				FUNC7(ulAddress,FALSE);
        }

        FUNC6(p,0,sizeof(*p));

        bResult = TRUE;
    }

    FUNC5();

    return bResult;
}