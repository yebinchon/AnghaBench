
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ULONG_PTR ;
typedef int ULONG ;
struct TYPE_3__ {scalar_t__ Signature; int Length; int Specification; int LocalAPICAddress; int ProductId; int Oem; } ;
typedef int* PUCHAR ;
typedef TYPE_1__* PMP_CONFIGURATION_TABLE ;
typedef int PMP_CONFIGURATION_PROCESSOR ;
typedef int PMP_CONFIGURATION_IOAPIC ;
typedef int PMP_CONFIGURATION_INTSRC ;
typedef int PMP_CONFIGURATION_INTLOCAL ;
typedef int PMP_CONFIGURATION_BUS ;
typedef int MP_CONFIGURATION_TABLE ;
typedef int MP_CONFIGURATION_PROCESSOR ;
typedef int MP_CONFIGURATION_IOAPIC ;
typedef int MP_CONFIGURATION_INTSRC ;
typedef int MP_CONFIGURATION_INTLOCAL ;
typedef int MP_CONFIGURATION_BUS ;
typedef int BOOLEAN ;


 int APIC_DEFAULT_BASE ;
 int ASSERT (int ) ;
 int DPRINT (char*,int,...) ;
 int DPRINT1 (char*,...) ;
 int FALSE ;
 int HAL_INITIALIZATION_FAILED ;
 int HaliMPBusInfo (int ) ;
 int HaliMPIOApicInfo (int ) ;
 int HaliMPIntLocalInfo (int ) ;
 int HaliMPIntSrcInfo (int ) ;
 int HaliMPProcessorInfo (int ) ;
 int KeBugCheckEx (int ,int,int,int,int) ;





 scalar_t__ MPC_SIGNATURE ;
 scalar_t__ MPChecksum (int*,int) ;
 int TRUE ;

__attribute__((used)) static BOOLEAN
HaliReadMPConfigTable(PMP_CONFIGURATION_TABLE Table)




{
   PUCHAR Entry;
   ULONG Count;

   if (Table->Signature != MPC_SIGNATURE)
     {
       PUCHAR pc = (PUCHAR)&Table->Signature;

       DPRINT1("Bad MP configuration block signature: %c%c%c%c\n",
  pc[0], pc[1], pc[2], pc[3]);
       KeBugCheckEx(HAL_INITIALIZATION_FAILED, pc[0], pc[1], pc[2], pc[3]);
       return FALSE;
     }

   if (MPChecksum((PUCHAR)Table, Table->Length))
     {
       DPRINT1("Bad MP configuration block checksum\n");
       ASSERT(FALSE);
       return FALSE;
     }

   if (Table->Specification != 0x01 && Table->Specification != 0x04)
     {
       DPRINT1("Bad MP configuration table version (%d)\n",
        Table->Specification);
       ASSERT(FALSE);
       return FALSE;
     }

   if (Table->LocalAPICAddress != APIC_DEFAULT_BASE)
     {
       DPRINT1("APIC base address is at 0x%X. I cannot handle non-standard adresses\n",
        Table->LocalAPICAddress);
       ASSERT(FALSE);
       return FALSE;
     }

   DPRINT("Oem: %.*s, ProductId: %.*s\n", 8, Table->Oem, 12, Table->ProductId);
   DPRINT("APIC at: %08x\n", Table->LocalAPICAddress);


   Entry = (PUCHAR)((ULONG_PTR)Table + sizeof(MP_CONFIGURATION_TABLE));
   Count = 0;
   while (Count < (Table->Length - sizeof(MP_CONFIGURATION_TABLE)))
   {

     switch (*Entry)
       {
       case 128:
         {
    HaliMPProcessorInfo((PMP_CONFIGURATION_PROCESSOR)Entry);
    Entry += sizeof(MP_CONFIGURATION_PROCESSOR);
    Count += sizeof(MP_CONFIGURATION_PROCESSOR);
    break;
  }
       case 132:
  {
    HaliMPBusInfo((PMP_CONFIGURATION_BUS)Entry);
    Entry += sizeof(MP_CONFIGURATION_BUS);
    Count += sizeof(MP_CONFIGURATION_BUS);
    break;
  }
       case 130:
  {
    HaliMPIOApicInfo((PMP_CONFIGURATION_IOAPIC)Entry);
    Entry += sizeof(MP_CONFIGURATION_IOAPIC);
    Count += sizeof(MP_CONFIGURATION_IOAPIC);
    break;
  }
       case 131:
  {
    HaliMPIntSrcInfo((PMP_CONFIGURATION_INTSRC)Entry);
    Entry += sizeof(MP_CONFIGURATION_INTSRC);
    Count += sizeof(MP_CONFIGURATION_INTSRC);
    break;
  }
       case 129:
  {
    HaliMPIntLocalInfo((PMP_CONFIGURATION_INTLOCAL)Entry);
    Entry += sizeof(MP_CONFIGURATION_INTLOCAL);
    Count += sizeof(MP_CONFIGURATION_INTLOCAL);
    break;
  }
       default:
  DPRINT1("Unknown entry in MPC table\n");
  ASSERT(FALSE);
  return FALSE;
       }
   }
   return TRUE;
}
