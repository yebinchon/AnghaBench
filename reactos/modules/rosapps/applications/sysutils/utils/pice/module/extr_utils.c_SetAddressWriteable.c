
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int* PULONG ;
typedef scalar_t__ BOOLEAN ;


 int* ADDR_TO_PDE (int ) ;
 int* ADDR_TO_PTE (int ) ;
 scalar_t__ FALSE ;
 int FLUSH_TLB ;
 scalar_t__ TRUE ;
 int _PAGE_4M ;
 int _PAGE_PRESENT ;
 int _PAGE_PSE ;
 int _PAGE_RW ;

BOOLEAN SetAddressWriteable(ULONG address,BOOLEAN bSet)
{
 PULONG pPGD;
 PULONG pPTE;



 pPGD = ADDR_TO_PDE(address);
    if(pPGD && ((*pPGD)&_PAGE_PRESENT))
    {

        if(!((*pPGD)&_PAGE_4M))
  {
   pPTE = ADDR_TO_PTE(address);
   if(pPTE)
   {
    if( (*pPTE)&(_PAGE_PRESENT | _PAGE_PSE) )
    {
                    if( bSet ){
      *pPTE |= _PAGE_RW;
     }
                    else{
      *pPTE &= ~_PAGE_RW;
     }
     FLUSH_TLB;
     return TRUE;
                }
   }
  }

  else
  {
            if( bSet )
                *pPGD |= _PAGE_RW;
            else
                *pPGD &= ~_PAGE_RW;
   FLUSH_TLB;
            return TRUE;
  }
 }
 return FALSE;
}
