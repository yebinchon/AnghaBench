#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_3__ {scalar_t__ IrqType; int SrcBusIrq; int DstApicLInt; int /*<<< orphan*/  DstApicId; int /*<<< orphan*/  SrcBusId; } ;
typedef  TYPE_1__* PMP_CONFIGURATION_INTLOCAL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ INT_EXTINT ; 
 scalar_t__ INT_NMI ; 

__attribute__((used)) static VOID 
FUNC3(PMP_CONFIGURATION_INTLOCAL m)
{
  FUNC1("Lint: type %d, pol %d, trig %d, bus %d,"
         " IRQ %02x, APIC ID %x, APIC LINT %02x\n",
         m->IrqType, m->SrcBusIrq & 3,
         (m->SrcBusIrq >> 2) & 3, m->SrcBusId,
          m->SrcBusIrq, m->DstApicId, m->DstApicLInt);
  /*
   * Well it seems all SMP boards in existence
   * use ExtINT/LVT1 == LINT0 and
   * NMI/LVT2 == LINT1 - the following check
   * will show us if this assumptions is false.
   * Until then we do not have to add baggage.
   */
  if ((m->IrqType == INT_EXTINT) && (m->DstApicLInt != 0)) 
  {
    FUNC2("Invalid MP table!\n");
    FUNC0(FALSE);
  }
  if ((m->IrqType == INT_NMI) && (m->DstApicLInt != 1)) 
  {
    FUNC2("Invalid MP table!\n");
    FUNC0(FALSE);
  }
}