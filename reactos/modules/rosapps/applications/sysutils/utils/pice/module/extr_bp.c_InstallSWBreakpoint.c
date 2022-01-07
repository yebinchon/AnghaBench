
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef void* ULONG ;
struct TYPE_4__ {int ucOriginalOpcode; void (* Callback ) () ;void* bPermanent; void* ulNextInstr; void* ulAddress; void* bInstalled; void* bUsed; } ;
typedef int* PUCHAR ;
typedef TYPE_1__* PSW_BP ;
typedef void* BOOLEAN ;


 int * ADDR_TO_PDE (void*) ;
 int * ADDR_TO_PTE (void*) ;
 int DPRINT (int ) ;
 int Disasm (void**,int*) ;
 int ENTER_FUNC () ;
 void* FALSE ;
 TYPE_1__* FindEmptySwBpSlot () ;
 TYPE_1__* FindSwBp (void*) ;
 scalar_t__ IsAddressValid (void*) ;
 void* IsAddressWriteable (void*) ;
 int LEAVE_FUNC () ;
 int SetAddressWriteable (void*,void*) ;
 void* TRUE ;
 int tempBp ;

BOOLEAN InstallSWBreakpoint(ULONG ulAddress,BOOLEAN bPermanent,void (*SWBreakpointCallback)(void))
{
    PSW_BP p;
    BOOLEAN bResult = FALSE;

    ENTER_FUNC();
    DPRINT((0,"InstallSWBreakpoint()\n"));



    if(IsAddressValid(ulAddress) )
    {
        DPRINT((0,"InstallSWBreakpoint(): %.8X is valid, writable? %d\n",ulAddress,IsAddressWriteable(ulAddress)));
  DPRINT((0,"pde: %x, pte: %x\n", *(ADDR_TO_PDE(ulAddress)), *(ADDR_TO_PTE(ulAddress))));
        if((p = FindSwBp(ulAddress))==((void*)0))
        {
            DPRINT((0,"InstallSWBreakpoint(): %.8X is free\n",ulAddress));
            if( (p=FindEmptySwBpSlot()) )
            {
    BOOLEAN isWriteable;
                DPRINT((0,"InstallSWBreakpoint(): found empty slot\n"));
    DPRINT((0,"InstallSWBreakpoint(): %x value: %x", ulAddress, *(PUCHAR)ulAddress));
                p->ucOriginalOpcode = *(PUCHAR)ulAddress;

    if( !( isWriteable = IsAddressWriteable(ulAddress) ) )
     SetAddressWriteable(ulAddress,TRUE);
       DPRINT((0,"writing breakpoint\n"));
    *(PUCHAR)ulAddress = 0xCC;
    DPRINT((0,"restoring page access\n"));
    if( !isWriteable )
     SetAddressWriteable(ulAddress,FALSE);
    p->bUsed = TRUE;
                p->bInstalled = TRUE;

                p->ulAddress = ulAddress;
                Disasm(&ulAddress,(PUCHAR)&tempBp);
                p->ulNextInstr = ulAddress;
                p->bPermanent = bPermanent;
                if(bPermanent)
                    p->Callback = SWBreakpointCallback;
    else
     p->Callback = ((void*)0);
                bResult = TRUE;
            }
        }
        else
        {
            DPRINT((0,"InstallSWBreakpoint(): %.8X is already used\n",ulAddress));
            if(p->bPermanent)
            {
                DPRINT((0,"InstallSWBreakpoint(): %.8X is a permanent breakpoint\n",ulAddress));
            }
        }
    }

    LEAVE_FUNC();

    return bResult;
}
