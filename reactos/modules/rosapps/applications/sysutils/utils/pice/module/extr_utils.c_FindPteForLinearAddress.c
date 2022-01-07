
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int* PULONG ;
typedef scalar_t__ PEPROCESS ;
typedef int BOOLEAN ;


 int* ADDR_TO_PDE (int) ;
 int* ADDR_TO_PTE (int) ;
 int ENTER_FUNC () ;
 int FALSE ;
 scalar_t__ IoGetCurrentProcess () ;
 int LEAVE_FUNC () ;
 int _PAGE_4M ;
 int _PAGE_PRESENT ;
 int _PAGE_SIZE ;

PULONG FindPteForLinearAddress(ULONG address)
{
 PULONG pPGD;
 PULONG pPTE;
 BOOLEAN bResult = FALSE;
 PEPROCESS my_current = IoGetCurrentProcess();

    ENTER_FUNC();

 address &= (~(_PAGE_SIZE-1));

 if(my_current)
 {
  pPGD = ADDR_TO_PDE(address);
        if(pPGD && ((*pPGD)&_PAGE_PRESENT))
        {

            if(!((*pPGD)&_PAGE_4M))
   {
    pPTE = ADDR_TO_PTE(address);
    if(pPTE)
    {
                    LEAVE_FUNC();
     return pPTE;
    }
   }

   else
   {
                LEAVE_FUNC();
    return ((void*)0);
   }
  }
 }

    LEAVE_FUNC();
 return ((void*)0);
}
