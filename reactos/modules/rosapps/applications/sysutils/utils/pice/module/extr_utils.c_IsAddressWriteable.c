
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int* PULONG ;
typedef int BOOLEAN ;


 int* ADDR_TO_PDE (int ) ;
 int* ADDR_TO_PTE (int ) ;
 int FALSE ;
 int TRUE ;
 int _PAGE_4M ;
 int _PAGE_PRESENT ;
 int _PAGE_PSE ;
 int _PAGE_RW ;

BOOLEAN IsAddressWriteable(ULONG address)
{
 PULONG pPGD;
 PULONG pPTE;


 pPGD = ADDR_TO_PDE(address);
    if(pPGD && ((*pPGD)&_PAGE_PRESENT))
    {

        if(!((*pPGD)&_PAGE_4M))
  {
      if(!((*pPGD) & _PAGE_RW))
     return FALSE;

   pPTE = ADDR_TO_PTE(address);
   if(pPTE)
   {
    if( ((*pPTE)&(_PAGE_PRESENT | _PAGE_PSE)) &&
        ((*pPTE) & _PAGE_RW))
     return TRUE;
    else
     return FALSE;
   }
  }

  else
   return ((*pPGD) & _PAGE_RW);
 }

 return FALSE;
}
