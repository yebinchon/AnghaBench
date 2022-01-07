
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int BOOLEAN ;


 int FALSE ;
 int IsAddressValid (int) ;
 int PAGE_SHIFT ;
 int TRUE ;
 int _PAGE_SIZE ;

BOOLEAN IsRangeValid(ULONG Addr,ULONG Length)
{
ULONG i,NumPages,PageNum;



 NumPages=(Length+(_PAGE_SIZE-1))>>12;


 PageNum=Addr>>PAGE_SHIFT;


 for(i=0;i<NumPages;i++)
 {

  if(!IsAddressValid((ULONG)((PageNum+i)*_PAGE_SIZE)) )
   return FALSE;
 }

 return TRUE;
}
