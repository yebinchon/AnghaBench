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
typedef  scalar_t__ ULONG_PTR ;
typedef  int ULONG ;
struct TYPE_3__ {scalar_t__ Signature; int Length; int Specification; int /*<<< orphan*/  LocalAPICAddress; int /*<<< orphan*/  ProductId; int /*<<< orphan*/  Oem; } ;
typedef  int* PUCHAR ;
typedef  TYPE_1__* PMP_CONFIGURATION_TABLE ;
typedef  int /*<<< orphan*/  PMP_CONFIGURATION_PROCESSOR ;
typedef  int /*<<< orphan*/  PMP_CONFIGURATION_IOAPIC ;
typedef  int /*<<< orphan*/  PMP_CONFIGURATION_INTSRC ;
typedef  int /*<<< orphan*/  PMP_CONFIGURATION_INTLOCAL ;
typedef  int /*<<< orphan*/  PMP_CONFIGURATION_BUS ;
typedef  int /*<<< orphan*/  MP_CONFIGURATION_TABLE ;
typedef  int /*<<< orphan*/  MP_CONFIGURATION_PROCESSOR ;
typedef  int /*<<< orphan*/  MP_CONFIGURATION_IOAPIC ;
typedef  int /*<<< orphan*/  MP_CONFIGURATION_INTSRC ;
typedef  int /*<<< orphan*/  MP_CONFIGURATION_INTLOCAL ;
typedef  int /*<<< orphan*/  MP_CONFIGURATION_BUS ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  APIC_DEFAULT_BASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  HAL_INITIALIZATION_FAILED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int,int,int) ; 
#define  MPCTE_BUS 132 
#define  MPCTE_INTSRC 131 
#define  MPCTE_IOAPIC 130 
#define  MPCTE_LINTSRC 129 
#define  MPCTE_PROCESSOR 128 
 scalar_t__ MPC_SIGNATURE ; 
 scalar_t__ FUNC9 (int*,int) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static BOOLEAN
FUNC10(PMP_CONFIGURATION_TABLE Table)
/*
   PARAMETERS:
      Table = Pointer to MP configuration table
 */
{
   PUCHAR Entry;
   ULONG Count;

   if (Table->Signature != MPC_SIGNATURE)
     {
       PUCHAR pc = (PUCHAR)&Table->Signature;
       
       FUNC2("Bad MP configuration block signature: %c%c%c%c\n",
		pc[0], pc[1], pc[2], pc[3]);
       FUNC8(HAL_INITIALIZATION_FAILED, pc[0], pc[1], pc[2], pc[3]);
       return FALSE;
     }

   if (FUNC9((PUCHAR)Table, Table->Length))
     {
       FUNC2("Bad MP configuration block checksum\n");
       FUNC0(FALSE);
       return FALSE;
     }

   if (Table->Specification != 0x01 && Table->Specification != 0x04)
     {
       FUNC2("Bad MP configuration table version (%d)\n",
	       Table->Specification);
       FUNC0(FALSE);
       return FALSE;
     }

   if (Table->LocalAPICAddress != APIC_DEFAULT_BASE)
     {
       FUNC2("APIC base address is at 0x%X. I cannot handle non-standard adresses\n", 
	       Table->LocalAPICAddress);
       FUNC0(FALSE);
       return FALSE;
     }

   FUNC1("Oem: %.*s, ProductId: %.*s\n", 8, Table->Oem, 12, Table->ProductId);
   FUNC1("APIC at: %08x\n", Table->LocalAPICAddress);


   Entry = (PUCHAR)((ULONG_PTR)Table + sizeof(MP_CONFIGURATION_TABLE));
   Count = 0;
   while (Count < (Table->Length - sizeof(MP_CONFIGURATION_TABLE)))
   {
     /* Switch on type */
     switch (*Entry)
       {
       case MPCTE_PROCESSOR:
         {
	   FUNC7((PMP_CONFIGURATION_PROCESSOR)Entry);
	   Entry += sizeof(MP_CONFIGURATION_PROCESSOR);
	   Count += sizeof(MP_CONFIGURATION_PROCESSOR);
	   break;
	 }
       case MPCTE_BUS:
	 {
	   FUNC3((PMP_CONFIGURATION_BUS)Entry);
	   Entry += sizeof(MP_CONFIGURATION_BUS);
	   Count += sizeof(MP_CONFIGURATION_BUS);
	   break;
	 }
       case MPCTE_IOAPIC:
	 {
	   FUNC4((PMP_CONFIGURATION_IOAPIC)Entry);
	   Entry += sizeof(MP_CONFIGURATION_IOAPIC);
	   Count += sizeof(MP_CONFIGURATION_IOAPIC);
	   break;
	 }
       case MPCTE_INTSRC:
	 {
	   FUNC6((PMP_CONFIGURATION_INTSRC)Entry);
	   Entry += sizeof(MP_CONFIGURATION_INTSRC);
	   Count += sizeof(MP_CONFIGURATION_INTSRC);
	   break;
	 }
       case MPCTE_LINTSRC:
	 {
	   FUNC5((PMP_CONFIGURATION_INTLOCAL)Entry);
	   Entry += sizeof(MP_CONFIGURATION_INTLOCAL);
	   Count += sizeof(MP_CONFIGURATION_INTLOCAL);
	   break;
	 }
       default:
	 FUNC2("Unknown entry in MPC table\n");
	 FUNC0(FALSE);
	 return FALSE;
       }
   }
   return TRUE;
}