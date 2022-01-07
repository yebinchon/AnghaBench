
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int* PULONG ;
typedef int BOOLEAN ;


 int* ADDR_TO_PDE (int) ;
 int* ADDR_TO_PTE (int) ;
 int FALSE ;
 int TRUE ;
 int _PAGE_4M ;
 int _PAGE_PRESENT ;
 int _PAGE_PSE ;
 int _PAGE_SIZE ;

BOOLEAN IsAddressValid(ULONG address)
{
 PULONG pPGD;
 PULONG pPTE;
 BOOLEAN bResult = FALSE;

 address &= (~(_PAGE_SIZE-1));

 pPGD = ADDR_TO_PDE(address);
    if(pPGD && ((*pPGD)&_PAGE_PRESENT))
    {

        if(!((*pPGD)&_PAGE_4M))
  {
   pPTE = ADDR_TO_PTE(address);
   if(pPTE)
   {
    bResult = (*pPTE)&(_PAGE_PRESENT | _PAGE_PSE);
   }
  }

  else
  {
   bResult = TRUE;
  }
 }

 return bResult;
}
