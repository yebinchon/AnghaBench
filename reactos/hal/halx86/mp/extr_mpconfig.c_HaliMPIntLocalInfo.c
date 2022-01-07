
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_3__ {scalar_t__ IrqType; int SrcBusIrq; int DstApicLInt; int DstApicId; int SrcBusId; } ;
typedef TYPE_1__* PMP_CONFIGURATION_INTLOCAL ;


 int ASSERT (int ) ;
 int DPRINT (char*,scalar_t__,int,int,int ,int,int ,int) ;
 int DPRINT1 (char*) ;
 int FALSE ;
 scalar_t__ INT_EXTINT ;
 scalar_t__ INT_NMI ;

__attribute__((used)) static VOID
HaliMPIntLocalInfo(PMP_CONFIGURATION_INTLOCAL m)
{
  DPRINT("Lint: type %d, pol %d, trig %d, bus %d,"
         " IRQ %02x, APIC ID %x, APIC LINT %02x\n",
         m->IrqType, m->SrcBusIrq & 3,
         (m->SrcBusIrq >> 2) & 3, m->SrcBusId,
          m->SrcBusIrq, m->DstApicId, m->DstApicLInt);







  if ((m->IrqType == INT_EXTINT) && (m->DstApicLInt != 0))
  {
    DPRINT1("Invalid MP table!\n");
    ASSERT(FALSE);
  }
  if ((m->IrqType == INT_NMI) && (m->DstApicLInt != 1))
  {
    DPRINT1("Invalid MP table!\n");
    ASSERT(FALSE);
  }
}
