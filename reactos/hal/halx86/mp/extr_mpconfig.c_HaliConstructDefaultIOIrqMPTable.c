
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int VOID ;
typedef int ULONG ;
typedef int UCHAR ;
struct TYPE_5__ {int ApicId; } ;
struct TYPE_4__ {int SrcBusIrq; int DstApicInt; int IrqType; int DstApicId; scalar_t__ SrcBusId; scalar_t__ IrqFlag; int Type; } ;
typedef TYPE_1__ MP_CONFIGURATION_INTSRC ;


 int HaliMPIntSrcInfo (TYPE_1__*) ;
 int INT_EXTINT ;
 int INT_VECTORED ;
 TYPE_2__* IOAPICMap ;
 int MPCTE_INTSRC ;

__attribute__((used)) static VOID
HaliConstructDefaultIOIrqMPTable(ULONG Type)
{
 MP_CONFIGURATION_INTSRC intsrc;
 UCHAR i;

 intsrc.Type = MPCTE_INTSRC;
 intsrc.IrqFlag = 0;
 intsrc.SrcBusId = 0;
 intsrc.DstApicId = IOAPICMap[0].ApicId;

 intsrc.IrqType = INT_VECTORED;
 for (i = 0; i < 16; i++) {
  switch (Type) {
  case 2:
   if (i == 0 || i == 13)
    continue;

  default:
   if (i == 2)
    continue;
  }

  intsrc.SrcBusIrq = i;
  intsrc.DstApicInt = i ? i : 2;
  HaliMPIntSrcInfo(&intsrc);
 }

 intsrc.IrqType = INT_EXTINT;
 intsrc.SrcBusIrq = 0;
 intsrc.DstApicInt = 0;
 HaliMPIntSrcInfo(&intsrc);
}
