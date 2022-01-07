
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int* PUCHAR ;
typedef int BOOLEAN ;


 int CurrentCS ;
 int CurrentEIP ;
 int DPRINT (int ) ;
 int ENTER_FUNC () ;
 int FALSE ;
 scalar_t__ GetLinearAddress (int ,int ) ;
 scalar_t__ IsRangeValid (int ,int) ;
 int LEAVE_FUNC () ;
 int TRUE ;

BOOLEAN IsCallInstrAtEIP(void)
{
PUCHAR linear;
BOOLEAN result=FALSE;

    ENTER_FUNC();
 DPRINT((0,"IsCallInstrAtEIP()\n"));

 linear=(PUCHAR)GetLinearAddress(CurrentCS,CurrentEIP);
 if(IsRangeValid((ULONG)linear,2))
 {
  if(*linear== 0xE8 ||
     (*linear== 0xFF && ( ((*(linear+1)>>3)&0x7)==0x2 || ((*(linear+1)>>3)&0x7)==0x3) ) ||
     *linear== 0x9A ||
     *linear== 0xF2 ||
     *linear== 0xF3)
   result=TRUE;
 }

    LEAVE_FUNC();

 return result;
}
