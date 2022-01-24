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
typedef  void* ULONG ;
struct TYPE_4__ {int ucOriginalOpcode; void (* Callback ) () ;void* bPermanent; void* ulNextInstr; void* ulAddress; void* bInstalled; void* bUsed; } ;
typedef  int* PUCHAR ;
typedef  TYPE_1__* PSW_BP ;
typedef  void* BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (void*) ; 
 int /*<<< orphan*/ * FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void**,int*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 void* FALSE ; 
 TYPE_1__* FUNC5 () ; 
 TYPE_1__* FUNC6 (void*) ; 
 scalar_t__ FUNC7 (void*) ; 
 void* FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (void*,void*) ; 
 void* TRUE ; 
 int /*<<< orphan*/  tempBp ; 

BOOLEAN FUNC11(ULONG ulAddress,BOOLEAN bPermanent,void (*SWBreakpointCallback)(void))
{
    PSW_BP p;
    BOOLEAN bResult = FALSE;

    FUNC4();
    FUNC2((0,"InstallSWBreakpoint()\n"));

    // check if page is present
    // TODO: must also check if it's a writable page
    if(FUNC7(ulAddress) )
    {
        FUNC2((0,"InstallSWBreakpoint(): %.8X is valid, writable? %d\n",ulAddress,FUNC8(ulAddress)));
		FUNC2((0,"pde: %x, pte: %x\n", *(FUNC0(ulAddress)), *(FUNC1(ulAddress))));
        if((p = FUNC6(ulAddress))==NULL)
        {
            FUNC2((0,"InstallSWBreakpoint(): %.8X is free\n",ulAddress));
            if( (p=FUNC5()) )
            {
				BOOLEAN isWriteable;
                FUNC2((0,"InstallSWBreakpoint(): found empty slot\n"));
				FUNC2((0,"InstallSWBreakpoint(): %x value: %x", ulAddress, *(PUCHAR)ulAddress));
                p->ucOriginalOpcode = *(PUCHAR)ulAddress;
				//allow writing to page
				if( !( isWriteable = FUNC8(ulAddress) ) )
					FUNC10(ulAddress,TRUE);
			    FUNC2((0,"writing breakpoint\n"));
				*(PUCHAR)ulAddress = 0xCC;
				FUNC2((0,"restoring page access\n"));
				if( !isWriteable )
					FUNC10(ulAddress,FALSE);
				p->bUsed = TRUE;
                p->bInstalled = TRUE;
                // find next address
                p->ulAddress = ulAddress;
                FUNC3(&ulAddress,(PUCHAR)&tempBp);
                p->ulNextInstr = ulAddress;
                p->bPermanent = bPermanent;
                if(bPermanent)
                    p->Callback = SWBreakpointCallback;
				else
					p->Callback = NULL;
                bResult = TRUE;
            }
        }
        else
        {
            FUNC2((0,"InstallSWBreakpoint(): %.8X is already used\n",ulAddress));
            if(p->bPermanent)
            {
                FUNC2((0,"InstallSWBreakpoint(): %.8X is a permanent breakpoint\n",ulAddress));
            }
        }
    }

    FUNC9();

    return bResult;
}