#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_7__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int /*<<< orphan*/  UINT32 ;
struct TYPE_9__ {int /*<<< orphan*/  Ascii; } ;
struct TYPE_8__ {int /*<<< orphan*/  Pointer; TYPE_7__ Signature; } ;
typedef  int /*<<< orphan*/  BOOLEAN ;
typedef  TYPE_1__ ACPI_TABLE_DESC ;
typedef  scalar_t__ ACPI_STATUS ;
typedef  int /*<<< orphan*/  ACPI_PHYSICAL_ADDRESS ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  ACPI_MTX_TABLES ; 
 int /*<<< orphan*/  ACPI_SIG_SSDT ; 
 int /*<<< orphan*/  ACPI_TABLE_EVENT_INSTALL ; 
 scalar_t__ AE_CTRL_TERMINATE ; 
 int /*<<< orphan*/  AE_INFO ; 
 scalar_t__ AE_OK ; 
 scalar_t__ AcpiGbl_DisableSsdtTableInstall ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 scalar_t__ FUNC11 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TbInstallStandardTable ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 

ACPI_STATUS
FUNC15 (
    ACPI_PHYSICAL_ADDRESS   Address,
    UINT8                   Flags,
    BOOLEAN                 Reload,
    BOOLEAN                 Override,
    UINT32                  *TableIndex)
{
    UINT32                  i;
    ACPI_STATUS             Status = AE_OK;
    ACPI_TABLE_DESC         NewTableDesc;


    FUNC4 (TbInstallStandardTable);


    /* Acquire a temporary table descriptor for validation */

    Status = FUNC6 (&NewTableDesc, Address, Flags);
    if (FUNC2 (Status))
    {
        FUNC1 ((AE_INFO,
            "Could not acquire table length at %8.8X%8.8X",
            FUNC3 (Address)));
        FUNC14 (Status);
    }

    /*
     * Optionally do not load any SSDTs from the RSDT/XSDT. This can
     * be useful for debugging ACPI problems on some machines.
     */
    if (!Reload &&
        AcpiGbl_DisableSsdtTableInstall &&
        FUNC0 (&NewTableDesc.Signature, ACPI_SIG_SSDT))
    {
        FUNC5 ((
            "Ignoring installation of %4.4s at %8.8X%8.8X",
            NewTableDesc.Signature.Ascii, FUNC3 (Address)));
        goto ReleaseAndExit;
    }

    /* Acquire the table lock */

    (void) FUNC12 (ACPI_MTX_TABLES);

    /* Validate and verify a table before installation */

    Status = FUNC11 (&NewTableDesc, NULL, &i);
    if (FUNC2 (Status))
    {
        if (Status == AE_CTRL_TERMINATE)
        {
            /*
             * Table was unloaded, allow it to be reloaded.
             * As we are going to return AE_OK to the caller, we should
             * take the responsibility of freeing the input descriptor.
             * Refill the input descriptor to ensure
             * AcpiTbInstallTableWithOverride() can be called again to
             * indicate the re-installation.
             */
            FUNC10 (&NewTableDesc);
            (void) FUNC13 (ACPI_MTX_TABLES);
            *TableIndex = i;
            FUNC14 (AE_OK);
        }
        goto UnlockAndExit;
    }

    /* Add the table to the global root table list */

    FUNC7 (&NewTableDesc, Override, TableIndex);

    /* Invoke table handler */

    (void) FUNC13 (ACPI_MTX_TABLES);
    FUNC8 (ACPI_TABLE_EVENT_INSTALL, NewTableDesc.Pointer);
    (void) FUNC12 (ACPI_MTX_TABLES);

UnlockAndExit:

    /* Release the table lock */

    (void) FUNC13 (ACPI_MTX_TABLES);

ReleaseAndExit:

    /* Release the temporary table descriptor */

    FUNC9 (&NewTableDesc);
    FUNC14 (Status);
}