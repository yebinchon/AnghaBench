#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UNICODE_STRING ;
typedef  int UINT32 ;
struct TYPE_7__ {int Revision; scalar_t__ RsdtPhysicalAddress; scalar_t__ XsdtPhysicalAddress; } ;
typedef  int /*<<< orphan*/  OBJECT_ATTRIBUTES ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/ * HANDLE ;
typedef  TYPE_1__ ACPI_TABLE_RSDP ;
typedef  TYPE_1__ ACPI_TABLE_HEADER ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  scalar_t__ ACPI_PHYSICAL_ADDRESS ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int ACPI_RSDT_ENTRY_SIZE ; 
 int /*<<< orphan*/  ACPI_SIG_DSDT ; 
 int /*<<< orphan*/  ACPI_SIG_FACS ; 
 int /*<<< orphan*/  ACPI_SIG_FADT ; 
 int ACPI_XSDT_ENTRY_SIZE ; 
 int /*<<< orphan*/  AcpiGbl_DoNotUseXsdt ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__**) ; 
 scalar_t__ FUNC2 () ; 
 TYPE_1__* FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KEY_WRITE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int OBJ_CASE_INSENSITIVE ; 
 int OBJ_KERNEL_HANDLE ; 
 int /*<<< orphan*/  REG_OPTION_VOLATILE ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  STATUS_NO_MEMORY ; 
 int /*<<< orphan*/  STATUS_UNSUCCESSFUL ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_1__*,char*) ; 

NTSTATUS
FUNC12(void)
{
    OBJECT_ATTRIBUTES ObjectAttributes;
    UNICODE_STRING HardwareKeyName = FUNC8(L"\\Registry\\Machine\\HARDWARE\\ACPI");
    HANDLE KeyHandle = NULL;
    NTSTATUS Status;
    ACPI_STATUS AcpiStatus;
    ACPI_TABLE_HEADER *OutTable;
    ACPI_PHYSICAL_ADDRESS RsdpAddress;
    ACPI_TABLE_RSDP *Rsdp;
    ACPI_PHYSICAL_ADDRESS Address;
    UINT32 TableEntrySize;

    /* Create Main Hardware ACPI key*/
    FUNC6(&ObjectAttributes,
                               &HardwareKeyName,
                               OBJ_CASE_INSENSITIVE | OBJ_KERNEL_HANDLE,
                               NULL,
                               NULL);
    Status = FUNC10(&KeyHandle,
                         KEY_WRITE,
                         &ObjectAttributes,
                         0,
                         NULL,
                         REG_OPTION_VOLATILE,
                         NULL);
    if (!FUNC7(Status))
    {
        FUNC5("ZwCreateKey() for ACPI failed (Status 0x%08lx)\n", Status);
        return Status;
    }
    /* Read DSDT table */
    AcpiStatus = FUNC1(ACPI_SIG_DSDT, 0, &OutTable);
    if (FUNC0(AcpiStatus))
    {
        FUNC5("AcpiGetTable() for DSDT failed (Status 0x%08lx)\n", AcpiStatus);
        Status = STATUS_UNSUCCESSFUL;
        goto done;
    }
    /* Dump DSDT table */
    Status = FUNC11(KeyHandle, OutTable, L"DSDT");
    if (!FUNC7(Status))
    {
        FUNC5("acpi_dump_table_to_registry() for DSDT failed (Status 0x%08lx)\n", Status);
        goto done;
    }
    /* Read FACS table */
    AcpiStatus = FUNC1(ACPI_SIG_FACS, 0, &OutTable);
    if (FUNC0(AcpiStatus))
    {
        FUNC5("AcpiGetTable() for FACS failed (Status 0x%08lx)\n", AcpiStatus);
        Status = STATUS_UNSUCCESSFUL;
        goto done;
    }
    /* Dump FACS table */
    Status = FUNC11(KeyHandle, OutTable, L"FACS");
    if (!FUNC7(Status))
    {
        FUNC5("acpi_dump_table_to_registry() for FACS failed (Status 0x%08lx)\n", Status);
        goto done;
    }
    /* Read FACS table */
    AcpiStatus = FUNC1(ACPI_SIG_FADT, 0, &OutTable);
    if (FUNC0(AcpiStatus))
    {
        FUNC5("AcpiGetTable() for FADT failed (Status 0x%08lx)\n", AcpiStatus);
        Status = STATUS_UNSUCCESSFUL;
        goto done;
    }
    /* Dump FADT table */
    Status = FUNC11(KeyHandle, OutTable, L"FADT");
    if (!FUNC7(Status))
    {
        FUNC5("acpi_dump_table_to_registry() for FADT failed (Status 0x%08lx)\n", Status);
        goto done;
    }
    /* This is a rough copy from ACPICA reading of RSDT/XSDT and added to avoid patching acpica */
    RsdpAddress = FUNC2();
    /* Map the entire RSDP and extract the address of the RSDT or XSDT */
    Rsdp = FUNC3(RsdpAddress, sizeof(ACPI_TABLE_RSDP));
    if (!Rsdp)
    {
        FUNC5("AcpiOsMapMemory() failed\n");
        Status = STATUS_NO_MEMORY;
        goto done;
    }
    /* Use XSDT if present and not overridden. Otherwise, use RSDT */
    if ((Rsdp->Revision > 1) &&
        Rsdp->XsdtPhysicalAddress &&
        !AcpiGbl_DoNotUseXsdt)
    {
        /*
        * RSDP contains an XSDT (64-bit physical addresses). We must use
        * the XSDT if the revision is > 1 and the XSDT pointer is present,
        * as per the ACPI specification.
        */
        Address = (ACPI_PHYSICAL_ADDRESS)Rsdp->XsdtPhysicalAddress;
        TableEntrySize = ACPI_XSDT_ENTRY_SIZE;
    }
    else
    {
        /* Root table is an RSDT (32-bit physical addresses) */
        Address = (ACPI_PHYSICAL_ADDRESS)Rsdp->RsdtPhysicalAddress;
        TableEntrySize = ACPI_RSDT_ENTRY_SIZE;
    }
    /*
    * It is not possible to map more than one entry in some environments,
    * so unmap the RSDP here before mapping other tables
    */
    FUNC4(Rsdp, sizeof(ACPI_TABLE_RSDP));
    OutTable = FUNC3(Address, TableEntrySize);
    if (!OutTable)
    {
        FUNC5("AcpiOsMapMemory() failed\n");
        Status = STATUS_NO_MEMORY;
        goto done;
    }
    /* Dump RSDT table */
    Status = FUNC11(KeyHandle, OutTable, L"RSDT");
    FUNC4(OutTable, TableEntrySize);
    if (!FUNC7(Status))
    {
        FUNC5("acpi_dump_table_to_registry() for RSDT failed (Status 0x%08lx)\n", Status);
    }

done:
    FUNC9(KeyHandle);
    return Status;
}