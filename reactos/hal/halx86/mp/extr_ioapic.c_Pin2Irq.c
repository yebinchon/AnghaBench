
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t ULONG ;
struct TYPE_4__ {size_t EntryCount; } ;
struct TYPE_3__ {size_t SrcBusId; size_t DstApicInt; size_t SrcBusIrq; } ;


 int* BUSMap ;
 int DPRINT (char*,...) ;
 TYPE_2__* IOAPICMap ;
 TYPE_1__* IRQMap ;





__attribute__((used)) static ULONG
Pin2Irq(ULONG idx,
 ULONG apic,
 ULONG pin)
{
   ULONG irq, i;
   ULONG bus = IRQMap[idx].SrcBusId;




   if (IRQMap[idx].DstApicInt != pin)
   {
      DPRINT("broken BIOS or MPTABLE parser, ayiee!!\n");
   }

   switch (BUSMap[bus])
   {
      case 130:
      case 131:
      case 129:
 irq = IRQMap[idx].SrcBusIrq;
 break;

      case 128:



  i = irq = 0;
  while (i < apic)
  {
     irq += IOAPICMap[i++].EntryCount;
  }
  irq += pin;
  break;

      default:
  DPRINT("Unknown bus type %d.\n",bus);
  irq = 0;
   }
   return irq;
}
