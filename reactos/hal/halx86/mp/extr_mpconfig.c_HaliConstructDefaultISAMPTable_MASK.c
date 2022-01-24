#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
typedef  int ULONG ;
typedef  int UCHAR ;
struct TYPE_12__ {int BusId; int /*<<< orphan*/  BusType; void* Type; } ;
struct TYPE_11__ {int IrqType; int DstApicLInt; int /*<<< orphan*/  DstApicId; scalar_t__ SrcBusIrq; scalar_t__ SrcBusId; scalar_t__ IrqFlag; int /*<<< orphan*/  Type; } ;
struct TYPE_10__ {int ApicId; int ApicVersion; int /*<<< orphan*/  ApicAddress; int /*<<< orphan*/  ApicFlags; int /*<<< orphan*/  Type; } ;
struct TYPE_9__ {int ApicVersion; int CpuFlags; int ApicId; scalar_t__* Reserved; scalar_t__ FeatureFlags; scalar_t__ CpuSignature; int /*<<< orphan*/  Type; } ;
typedef  TYPE_1__ MP_CONFIGURATION_PROCESSOR ;
typedef  TYPE_2__ MP_CONFIGURATION_IOAPIC ;
typedef  TYPE_3__ MP_CONFIGURATION_INTLOCAL ;
typedef  TYPE_4__ MP_CONFIGURATION_BUS ;

/* Variables and functions */
 int CPU_FLAG_BSP ; 
 int CPU_FLAG_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int INT_EXTINT ; 
 int INT_NMI ; 
 int /*<<< orphan*/  IOAPIC_DEFAULT_BASE ; 
 void* MPCTE_BUS ; 
 int /*<<< orphan*/  MPCTE_IOAPIC ; 
 int /*<<< orphan*/  MPCTE_LINTSRC ; 
 int /*<<< orphan*/  MPCTE_PROCESSOR ; 
 int /*<<< orphan*/  MP_APIC_ALL ; 
 int /*<<< orphan*/  MP_IOAPIC_USABLE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static VOID 
FUNC7(ULONG Type)
{
  MP_CONFIGURATION_PROCESSOR processor;
  MP_CONFIGURATION_BUS bus;
  MP_CONFIGURATION_IOAPIC ioapic;
  MP_CONFIGURATION_INTLOCAL lintsrc;
  UCHAR linttypes[2] = { INT_EXTINT, INT_NMI };
  UCHAR i;

  /*
   * 2 CPUs, numbered 0 & 1.
   */
  processor.Type = MPCTE_PROCESSOR;
  /* Either an integrated APIC or a discrete 82489DX. */
  processor.ApicVersion = Type > 4 ? 0x10 : 0x01;
  processor.CpuFlags = CPU_FLAG_ENABLED | CPU_FLAG_BSP;
  /* FIXME: Get this from the bootstrap processor */
  processor.CpuSignature = 0;
  processor.FeatureFlags = 0;
  processor.Reserved[0] = 0;
  processor.Reserved[1] = 0;
  for (i = 0; i < 2; i++) 
  {
    processor.ApicId = i;
    FUNC5(&processor);
    processor.CpuFlags &= ~CPU_FLAG_BSP;
  }

  bus.Type = MPCTE_BUS;
  bus.BusId = 0;
  switch (Type) 
  {
    default:
    FUNC0("Unknown standard configuration %d\n", Type);
      /* Fall through */
    case 1:
    case 5:
      FUNC6(bus.BusType, "ISA   ", 6);
      break;
    case 2:
    case 6:
    case 3:
      FUNC6(bus.BusType, "EISA  ", 6);
      break;
    case 4:
    case 7:
      FUNC6(bus.BusType, "MCA   ", 6);
  }
  FUNC2(&bus);
  if (Type > 4) 
  {
    bus.Type = MPCTE_BUS;
    bus.BusId = 1;
    FUNC6(bus.BusType, "PCI   ", 6);
    FUNC2(&bus);
  }

  ioapic.Type = MPCTE_IOAPIC;
  ioapic.ApicId = 2;
  ioapic.ApicVersion = Type > 4 ? 0x10 : 0x01;
  ioapic.ApicFlags = MP_IOAPIC_USABLE;
  ioapic.ApicAddress = IOAPIC_DEFAULT_BASE;
  FUNC3(&ioapic);

  /*
   * We set up most of the low 16 IO-APIC pins according to MPS rules.
   */
  FUNC1(Type);

  lintsrc.Type = MPCTE_LINTSRC;
  lintsrc.IrqType = 0;
  lintsrc.IrqFlag = 0;  /* conforming */
  lintsrc.SrcBusId = 0;
  lintsrc.SrcBusIrq = 0;
  lintsrc.DstApicId = MP_APIC_ALL;
  for (i = 0; i < 2; i++) 
  {
    lintsrc.IrqType = linttypes[i];
    lintsrc.DstApicLInt = i;
    FUNC4(&lintsrc);
  }
}