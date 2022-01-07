
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int VOID ;
typedef int ULONG ;
typedef int UCHAR ;
struct TYPE_12__ {int BusId; int BusType; void* Type; } ;
struct TYPE_11__ {int IrqType; int DstApicLInt; int DstApicId; scalar_t__ SrcBusIrq; scalar_t__ SrcBusId; scalar_t__ IrqFlag; int Type; } ;
struct TYPE_10__ {int ApicId; int ApicVersion; int ApicAddress; int ApicFlags; int Type; } ;
struct TYPE_9__ {int ApicVersion; int CpuFlags; int ApicId; scalar_t__* Reserved; scalar_t__ FeatureFlags; scalar_t__ CpuSignature; int Type; } ;
typedef TYPE_1__ MP_CONFIGURATION_PROCESSOR ;
typedef TYPE_2__ MP_CONFIGURATION_IOAPIC ;
typedef TYPE_3__ MP_CONFIGURATION_INTLOCAL ;
typedef TYPE_4__ MP_CONFIGURATION_BUS ;


 int CPU_FLAG_BSP ;
 int CPU_FLAG_ENABLED ;
 int DPRINT (char*,int) ;
 int HaliConstructDefaultIOIrqMPTable (int) ;
 int HaliMPBusInfo (TYPE_4__*) ;
 int HaliMPIOApicInfo (TYPE_2__*) ;
 int HaliMPIntLocalInfo (TYPE_3__*) ;
 int HaliMPProcessorInfo (TYPE_1__*) ;
 int INT_EXTINT ;
 int INT_NMI ;
 int IOAPIC_DEFAULT_BASE ;
 void* MPCTE_BUS ;
 int MPCTE_IOAPIC ;
 int MPCTE_LINTSRC ;
 int MPCTE_PROCESSOR ;
 int MP_APIC_ALL ;
 int MP_IOAPIC_USABLE ;
 int memcpy (int ,char*,int) ;

__attribute__((used)) static VOID
HaliConstructDefaultISAMPTable(ULONG Type)
{
  MP_CONFIGURATION_PROCESSOR processor;
  MP_CONFIGURATION_BUS bus;
  MP_CONFIGURATION_IOAPIC ioapic;
  MP_CONFIGURATION_INTLOCAL lintsrc;
  UCHAR linttypes[2] = { INT_EXTINT, INT_NMI };
  UCHAR i;




  processor.Type = MPCTE_PROCESSOR;

  processor.ApicVersion = Type > 4 ? 0x10 : 0x01;
  processor.CpuFlags = CPU_FLAG_ENABLED | CPU_FLAG_BSP;

  processor.CpuSignature = 0;
  processor.FeatureFlags = 0;
  processor.Reserved[0] = 0;
  processor.Reserved[1] = 0;
  for (i = 0; i < 2; i++)
  {
    processor.ApicId = i;
    HaliMPProcessorInfo(&processor);
    processor.CpuFlags &= ~CPU_FLAG_BSP;
  }

  bus.Type = MPCTE_BUS;
  bus.BusId = 0;
  switch (Type)
  {
    default:
    DPRINT("Unknown standard configuration %d\n", Type);

    case 1:
    case 5:
      memcpy(bus.BusType, "ISA   ", 6);
      break;
    case 2:
    case 6:
    case 3:
      memcpy(bus.BusType, "EISA  ", 6);
      break;
    case 4:
    case 7:
      memcpy(bus.BusType, "MCA   ", 6);
  }
  HaliMPBusInfo(&bus);
  if (Type > 4)
  {
    bus.Type = MPCTE_BUS;
    bus.BusId = 1;
    memcpy(bus.BusType, "PCI   ", 6);
    HaliMPBusInfo(&bus);
  }

  ioapic.Type = MPCTE_IOAPIC;
  ioapic.ApicId = 2;
  ioapic.ApicVersion = Type > 4 ? 0x10 : 0x01;
  ioapic.ApicFlags = MP_IOAPIC_USABLE;
  ioapic.ApicAddress = IOAPIC_DEFAULT_BASE;
  HaliMPIOApicInfo(&ioapic);




  HaliConstructDefaultIOIrqMPTable(Type);

  lintsrc.Type = MPCTE_LINTSRC;
  lintsrc.IrqType = 0;
  lintsrc.IrqFlag = 0;
  lintsrc.SrcBusId = 0;
  lintsrc.SrcBusIrq = 0;
  lintsrc.DstApicId = MP_APIC_ALL;
  for (i = 0; i < 2; i++)
  {
    lintsrc.IrqType = linttypes[i];
    lintsrc.DstApicLInt = i;
    HaliMPIntLocalInfo(&lintsrc);
  }
}
