
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tagDESCRIPTOR {size_t Val; scalar_t__ Ti; } ;
typedef int USHORT ;
typedef int ULONG ;
struct TYPE_3__ {int Base_31_24; int Base_23_16; int Base_15_0; } ;
typedef TYPE_1__* PGDT ;
typedef struct tagDESCRIPTOR* PDESCRIPTOR ;


 int DPRINT (int ) ;
 int ENTER_FUNC () ;
 TYPE_1__* GetGDTPtr () ;
 int IsRangeValid (int,int) ;
 int LEAVE_FUNC () ;

ULONG GetLinearAddress(USHORT Segment,ULONG Offset)
{
    PGDT pGdt;
    ULONG result=0;
    PDESCRIPTOR pSel;
    USHORT OriginalSegment=Segment;

    ENTER_FUNC();

 pSel=(struct tagDESCRIPTOR*)&Segment;


 pGdt=GetGDTPtr();
    DPRINT((0,"GetLinearAddress(): pGDT = %.8X\n",pGdt));
    DPRINT((0,"GetLinearAddress(): original Segment:Offset = %.4X:%.8X\n",Segment,Offset));


 if(pSel->Ti)
 {
  DPRINT((0,"GetLinearAddress(): Segment is in LDT\n"));

  __asm__("\n\t 			sldt %%ax\n\t 			mov %%ax,%0"


   :"=m" (Segment));
  if(Segment)
  {
   DPRINT((0,"GetLinearAddress(): no LDT\n"));

   pGdt=(PGDT)((pGdt[pSel->Val].Base_31_24<<24)|
        (pGdt[pSel->Val].Base_23_16<<16)|
           (pGdt[pSel->Val].Base_15_0));
   if(!IsRangeValid((ULONG)pGdt,0x8) )
    pGdt=0;
  }
  else
  {
   pGdt=0;
  }
 }

 if(pGdt && Segment)
 {
        DPRINT((0,"GetLinearAddress(): Segment:Offset = %.4X:%.8X\n",Segment,Offset));
  result=pGdt[OriginalSegment>>3].Base_15_0|
      (pGdt[OriginalSegment>>3].Base_23_16<<16)|
      (pGdt[OriginalSegment>>3].Base_31_24<<24);
  result+=Offset;
 }
 DPRINT((0,"GetLinearAddress(%.4X:%.8X)=%.8X\n",OriginalSegment,Offset,result));

    LEAVE_FUNC();

 return result;
}
