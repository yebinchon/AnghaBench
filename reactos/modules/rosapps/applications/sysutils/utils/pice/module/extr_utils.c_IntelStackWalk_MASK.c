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
typedef  int ULONG ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  int* PULONG ;
typedef  int /*<<< orphan*/  LPSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  OUTPUT_WINDOW ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  tempUtil ; 

void FUNC7(ULONG pc,ULONG ebp,ULONG esp)
{
    PULONG pFrame, pPrevFrame;
    LPSTR pSymbolName;

    FUNC0((0,"IntelStackWalk(): pc = %X ebp = %X esp = %X\n",pc,ebp,esp));

    pFrame = pPrevFrame = (PULONG)ebp;

    FUNC5("EIP      FRAME    NAME\n");
    while(1)
    {
        FUNC0((0,"IntelStackWalk(): pFrame = %X pPrevFrame = %X pc =%X\n",(ULONG)pFrame,(ULONG)pPrevFrame,pc));
        if ( ( (ULONG)pFrame & 3 )    ||
             ( (pFrame <= pPrevFrame) ) )
        {
            FUNC0((0,"IntelStackWalk(): pFrame is either unaligned or not less than previous\n"));
            if( !FUNC2((ULONG)pFrame, sizeof(PVOID)*2) )
            {
                FUNC0((0,"IntelStackWalk(): pFrame not valid pointer!\n"));
                break;
            }
        }

        if((pSymbolName = FUNC1(pc,NULL,NULL)) )
		    FUNC3(tempUtil,"%08X %08X %s\n",pc, (ULONG)pFrame,pSymbolName);
		else
		    FUNC3(tempUtil,"%08X %08X\n",pc, (ULONG)pFrame);
        FUNC4(OUTPUT_WINDOW,tempUtil);
        if(FUNC6()==FALSE)break;

        pc = pFrame[1];

        pPrevFrame = pFrame;

        pFrame = (PULONG)pFrame[0]; // proceed to next higher frame on stack
    }
}