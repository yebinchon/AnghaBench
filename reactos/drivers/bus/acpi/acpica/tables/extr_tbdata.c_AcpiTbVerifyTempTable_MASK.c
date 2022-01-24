#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_6__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT32 ;
struct TYPE_8__ {char* Ascii; int /*<<< orphan*/  Integer; } ;
struct TYPE_7__ {int /*<<< orphan*/  Flags; int /*<<< orphan*/  Address; TYPE_6__ Signature; int /*<<< orphan*/  Length; int /*<<< orphan*/  Pointer; } ;
typedef  TYPE_1__ ACPI_TABLE_DESC ;
typedef  scalar_t__ ACPI_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_TABLE_IS_VERIFIED ; 
 scalar_t__ AE_BAD_SIGNATURE ; 
 scalar_t__ AE_CTRL_TERMINATE ; 
 int /*<<< orphan*/  AE_INFO ; 
 scalar_t__ AE_NO_MEMORY ; 
 scalar_t__ AE_OK ; 
 scalar_t__ AcpiGbl_EnableTableValidation ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (char*) ; 
 int /*<<< orphan*/  TbVerifyTempTable ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 

ACPI_STATUS
FUNC12 (
    ACPI_TABLE_DESC         *TableDesc,
    char                    *Signature,
    UINT32                  *TableIndex)
{
    ACPI_STATUS             Status = AE_OK;


    FUNC5 (TbVerifyTempTable);


    /* Validate the table */

    Status = FUNC8 (TableDesc);
    if (FUNC3 (Status))
    {
        FUNC11 (AE_NO_MEMORY);
    }

    /* If a particular signature is expected (DSDT/FACS), it must match */

    if (Signature &&
        !FUNC1 (&TableDesc->Signature, Signature))
    {
        FUNC0 ((AE_INFO,
            "Invalid signature 0x%X for ACPI table, expected [%s]",
            TableDesc->Signature.Integer, Signature));
        Status = AE_BAD_SIGNATURE;
        goto InvalidateAndExit;
    }

    if (AcpiGbl_EnableTableValidation)
    {
        /* Verify the checksum */

        Status = FUNC9 (TableDesc->Pointer, TableDesc->Length);
        if (FUNC3 (Status))
        {
            FUNC2 ((AE_INFO, AE_NO_MEMORY,
                "%4.4s 0x%8.8X%8.8X"
                " Attempted table install failed",
                FUNC10 (TableDesc->Signature.Ascii) ?
                    TableDesc->Signature.Ascii : "????",
                FUNC4 (TableDesc->Address)));

            goto InvalidateAndExit;
        }

        /* Avoid duplications */

        if (TableIndex)
        {
            Status = FUNC6 (TableDesc, TableIndex);
            if (FUNC3 (Status))
            {
                if (Status != AE_CTRL_TERMINATE)
                {
                    FUNC2 ((AE_INFO, Status,
                        "%4.4s 0x%8.8X%8.8X"
                        " Table is already loaded",
                        FUNC10 (TableDesc->Signature.Ascii) ?
                            TableDesc->Signature.Ascii : "????",
                        FUNC4 (TableDesc->Address)));
                }

                goto InvalidateAndExit;
            }
        }

        TableDesc->Flags |= ACPI_TABLE_IS_VERIFIED;
    }

    FUNC11 (Status);

InvalidateAndExit:
    FUNC7 (TableDesc);
    FUNC11 (Status);
}