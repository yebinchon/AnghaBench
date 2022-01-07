
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_4__ {scalar_t__ bInstalled; scalar_t__ bVirtual; int ucOriginalOpcode; scalar_t__ ulAddress; } ;
typedef int * PUCHAR ;
typedef TYPE_1__* PSW_BP ;
typedef scalar_t__ BOOLEAN ;


 int DPRINT (int ) ;
 int ENTER_FUNC () ;
 scalar_t__ FALSE ;
 TYPE_1__* FindSwBp (int ) ;
 scalar_t__ IsAddressValid (int ) ;
 scalar_t__ IsAddressWriteable (int ) ;
 int LEAVE_FUNC () ;
 int PICE_memset (TYPE_1__*,int ,int) ;
 int SetAddressWriteable (int ,scalar_t__) ;
 scalar_t__ TRUE ;

BOOLEAN RemoveSWBreakpoint(ULONG ulAddress)
{
    PSW_BP p;
    BOOLEAN bResult = FALSE;

    ENTER_FUNC();
    DPRINT((0,"RemoveSWBreakpoint()\n"));

    if( (p = FindSwBp(ulAddress)) )
    {
        if(IsAddressValid(ulAddress) && p->bInstalled == TRUE && p->bVirtual==FALSE)
        {
   BOOLEAN isWriteable;
   if( !( isWriteable = IsAddressWriteable(ulAddress) ) )
    SetAddressWriteable(ulAddress,TRUE);

            *(PUCHAR)(p->ulAddress) = p->ucOriginalOpcode;
   if( !isWriteable )
    SetAddressWriteable(ulAddress,FALSE);
        }

        PICE_memset(p,0,sizeof(*p));

        bResult = TRUE;
    }

    LEAVE_FUNC();

    return bResult;
}
