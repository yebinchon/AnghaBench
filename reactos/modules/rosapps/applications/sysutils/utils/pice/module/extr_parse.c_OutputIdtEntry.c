
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ USHORT ;
typedef size_t ULONG ;
struct TYPE_3__ {int Offset_31_16; int Offset_15_0; int DescType; int Dpl; scalar_t__ Selector; } ;
typedef TYPE_1__* PIDT ;
typedef int LPSTR ;


 int GetLinearAddress (scalar_t__,size_t) ;
 int OUTPUT_WINDOW ;
 int PICE_sprintf (int ,char*,size_t,...) ;
 int Print (int ,int ) ;
 int ScanExportsByAddress (int *,int ) ;
 int tempCmd ;

void OutputIdtEntry(PIDT pIdt,ULONG i)
{
    USHORT seg;
    ULONG offset;
    LPSTR pSym;

    seg = (USHORT)pIdt[i].Selector;
    offset = (pIdt[i].Offset_31_16<<16)|(pIdt[i].Offset_15_0);

    switch(pIdt[i].DescType)
 {

  case 0x5:
   PICE_sprintf(tempCmd,"(%0.4X) %0.4X:%0.8X %u [task]\n",i,
               seg,
               GetLinearAddress((USHORT)seg,0),
               pIdt[i].Dpl);
   break;

  case 0x6:
  case 0xE:
   if(ScanExportsByAddress(&pSym,GetLinearAddress((USHORT)seg,offset)))
   {
    PICE_sprintf(tempCmd,"(%0.4X) %0.4X:%0.8X %u [int] (%s)\n",i,
                 seg,
                 offset,
                 pIdt[i].Dpl,
                 pSym);
   }
   else
   {
    PICE_sprintf(tempCmd,"(%0.4X) %0.4X:%0.8X %u [int]\n",i,
                 seg,
                 offset,
                 pIdt[i].Dpl);
   }
   break;

  case 0x7:
  case 0xF:
   if(ScanExportsByAddress(&pSym,GetLinearAddress((USHORT)seg,offset)))
   {
    PICE_sprintf(tempCmd,"(%0.4X) %0.4X:%0.8X %u [trap] (%s)\n",i,
                 seg,
                 offset,
                 pIdt[i].Dpl,
                 pSym);
   }
   else
   {
    PICE_sprintf(tempCmd,"(%0.4X) %0.4X:%0.8X %u [trap]\n",i,
                 seg,
                 offset,
                 pIdt[i].Dpl);
   }
   break;
  default:
   PICE_sprintf(tempCmd,"(%0.4X) INVALID\n",i);
   break;
 }
 Print(OUTPUT_WINDOW,tempCmd);
}
