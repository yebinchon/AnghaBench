
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int UNICODE_STRING ;
typedef int UINT32 ;
struct TYPE_7__ {int Revision; scalar_t__ RsdtPhysicalAddress; scalar_t__ XsdtPhysicalAddress; } ;
typedef int OBJECT_ATTRIBUTES ;
typedef int NTSTATUS ;
typedef int * HANDLE ;
typedef TYPE_1__ ACPI_TABLE_RSDP ;
typedef TYPE_1__ ACPI_TABLE_HEADER ;
typedef int ACPI_STATUS ;
typedef scalar_t__ ACPI_PHYSICAL_ADDRESS ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_RSDT_ENTRY_SIZE ;
 int ACPI_SIG_DSDT ;
 int ACPI_SIG_FACS ;
 int ACPI_SIG_FADT ;
 int ACPI_XSDT_ENTRY_SIZE ;
 int AcpiGbl_DoNotUseXsdt ;
 int AcpiGetTable (int ,int ,TYPE_1__**) ;
 scalar_t__ AcpiOsGetRootPointer () ;
 TYPE_1__* AcpiOsMapMemory (scalar_t__,int) ;
 int AcpiOsUnmapMemory (TYPE_1__*,int) ;
 int DPRINT1 (char*,...) ;
 int InitializeObjectAttributes (int *,int *,int,int *,int *) ;
 int KEY_WRITE ;
 int NT_SUCCESS (int ) ;
 int OBJ_CASE_INSENSITIVE ;
 int OBJ_KERNEL_HANDLE ;
 int REG_OPTION_VOLATILE ;
 int RTL_CONSTANT_STRING (char*) ;
 int STATUS_NO_MEMORY ;
 int STATUS_UNSUCCESSFUL ;
 int ZwClose (int *) ;
 int ZwCreateKey (int **,int ,int *,int ,int *,int ,int *) ;
 int acpi_create_registry_table (int *,TYPE_1__*,char*) ;

NTSTATUS
acpi_create_volatile_registry_tables(void)
{
    OBJECT_ATTRIBUTES ObjectAttributes;
    UNICODE_STRING HardwareKeyName = RTL_CONSTANT_STRING(L"\\Registry\\Machine\\HARDWARE\\ACPI");
    HANDLE KeyHandle = ((void*)0);
    NTSTATUS Status;
    ACPI_STATUS AcpiStatus;
    ACPI_TABLE_HEADER *OutTable;
    ACPI_PHYSICAL_ADDRESS RsdpAddress;
    ACPI_TABLE_RSDP *Rsdp;
    ACPI_PHYSICAL_ADDRESS Address;
    UINT32 TableEntrySize;


    InitializeObjectAttributes(&ObjectAttributes,
                               &HardwareKeyName,
                               OBJ_CASE_INSENSITIVE | OBJ_KERNEL_HANDLE,
                               ((void*)0),
                               ((void*)0));
    Status = ZwCreateKey(&KeyHandle,
                         KEY_WRITE,
                         &ObjectAttributes,
                         0,
                         ((void*)0),
                         REG_OPTION_VOLATILE,
                         ((void*)0));
    if (!NT_SUCCESS(Status))
    {
        DPRINT1("ZwCreateKey() for ACPI failed (Status 0x%08lx)\n", Status);
        return Status;
    }

    AcpiStatus = AcpiGetTable(ACPI_SIG_DSDT, 0, &OutTable);
    if (ACPI_FAILURE(AcpiStatus))
    {
        DPRINT1("AcpiGetTable() for DSDT failed (Status 0x%08lx)\n", AcpiStatus);
        Status = STATUS_UNSUCCESSFUL;
        goto done;
    }

    Status = acpi_create_registry_table(KeyHandle, OutTable, L"DSDT");
    if (!NT_SUCCESS(Status))
    {
        DPRINT1("acpi_dump_table_to_registry() for DSDT failed (Status 0x%08lx)\n", Status);
        goto done;
    }

    AcpiStatus = AcpiGetTable(ACPI_SIG_FACS, 0, &OutTable);
    if (ACPI_FAILURE(AcpiStatus))
    {
        DPRINT1("AcpiGetTable() for FACS failed (Status 0x%08lx)\n", AcpiStatus);
        Status = STATUS_UNSUCCESSFUL;
        goto done;
    }

    Status = acpi_create_registry_table(KeyHandle, OutTable, L"FACS");
    if (!NT_SUCCESS(Status))
    {
        DPRINT1("acpi_dump_table_to_registry() for FACS failed (Status 0x%08lx)\n", Status);
        goto done;
    }

    AcpiStatus = AcpiGetTable(ACPI_SIG_FADT, 0, &OutTable);
    if (ACPI_FAILURE(AcpiStatus))
    {
        DPRINT1("AcpiGetTable() for FADT failed (Status 0x%08lx)\n", AcpiStatus);
        Status = STATUS_UNSUCCESSFUL;
        goto done;
    }

    Status = acpi_create_registry_table(KeyHandle, OutTable, L"FADT");
    if (!NT_SUCCESS(Status))
    {
        DPRINT1("acpi_dump_table_to_registry() for FADT failed (Status 0x%08lx)\n", Status);
        goto done;
    }

    RsdpAddress = AcpiOsGetRootPointer();

    Rsdp = AcpiOsMapMemory(RsdpAddress, sizeof(ACPI_TABLE_RSDP));
    if (!Rsdp)
    {
        DPRINT1("AcpiOsMapMemory() failed\n");
        Status = STATUS_NO_MEMORY;
        goto done;
    }

    if ((Rsdp->Revision > 1) &&
        Rsdp->XsdtPhysicalAddress &&
        !AcpiGbl_DoNotUseXsdt)
    {





        Address = (ACPI_PHYSICAL_ADDRESS)Rsdp->XsdtPhysicalAddress;
        TableEntrySize = ACPI_XSDT_ENTRY_SIZE;
    }
    else
    {

        Address = (ACPI_PHYSICAL_ADDRESS)Rsdp->RsdtPhysicalAddress;
        TableEntrySize = ACPI_RSDT_ENTRY_SIZE;
    }




    AcpiOsUnmapMemory(Rsdp, sizeof(ACPI_TABLE_RSDP));
    OutTable = AcpiOsMapMemory(Address, TableEntrySize);
    if (!OutTable)
    {
        DPRINT1("AcpiOsMapMemory() failed\n");
        Status = STATUS_NO_MEMORY;
        goto done;
    }

    Status = acpi_create_registry_table(KeyHandle, OutTable, L"RSDT");
    AcpiOsUnmapMemory(OutTable, TableEntrySize);
    if (!NT_SUCCESS(Status))
    {
        DPRINT1("acpi_dump_table_to_registry() for RSDT failed (Status 0x%08lx)\n", Status);
    }

done:
    ZwClose(KeyHandle);
    return Status;
}
