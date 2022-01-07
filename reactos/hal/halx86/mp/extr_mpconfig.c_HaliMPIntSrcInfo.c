
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_4__ {int IrqFlag; int DstApicInt; int DstApicId; int SrcBusIrq; int SrcBusId; int IrqType; } ;
typedef TYPE_1__* PMP_CONFIGURATION_INTSRC ;


 int ASSERT (int ) ;
 int DPRINT (char*,int ,int,int,int ,int ,int ,int ) ;
 int DPRINT1 (char*) ;
 int FALSE ;
 size_t IRQCount ;
 TYPE_1__* IRQMap ;
 size_t MAX_IRQ_SOURCE ;

__attribute__((used)) static VOID
HaliMPIntSrcInfo(PMP_CONFIGURATION_INTSRC m)
{
  DPRINT("Int: type %d, pol %d, trig %d, bus %d,"
         " IRQ %02x, APIC ID %x, APIC INT %02x\n",
         m->IrqType, m->IrqFlag & 3,
         (m->IrqFlag >> 2) & 3, m->SrcBusId,
         m->SrcBusIrq, m->DstApicId, m->DstApicInt);
  if (IRQCount > MAX_IRQ_SOURCE)
  {
    DPRINT1("Max # of irq sources exceeded!!\n");
    ASSERT(FALSE);
  }

  IRQMap[IRQCount] = *m;
  IRQCount++;
}
