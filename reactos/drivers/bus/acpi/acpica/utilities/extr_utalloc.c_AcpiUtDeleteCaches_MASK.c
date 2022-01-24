#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  ACPI_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_UINT32_MAX ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * AcpiGbl_CommentAddrCache ; 
 scalar_t__ AcpiGbl_DisplayFinalMemStats ; 
 int /*<<< orphan*/ * AcpiGbl_FileCache ; 
 int /*<<< orphan*/ * AcpiGbl_GlobalList ; 
 int /*<<< orphan*/ * AcpiGbl_NamespaceCache ; 
 int /*<<< orphan*/ * AcpiGbl_NsNodeList ; 
 int /*<<< orphan*/ * AcpiGbl_OperandCache ; 
 int /*<<< orphan*/ * AcpiGbl_PsNodeCache ; 
 int /*<<< orphan*/ * AcpiGbl_PsNodeExtCache ; 
 int /*<<< orphan*/ * AcpiGbl_RegCommentCache ; 
 int /*<<< orphan*/ * AcpiGbl_StateCache ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

ACPI_STATUS
FUNC5 (
    void)
{
#ifdef ACPI_DBG_TRACK_ALLOCATIONS
    char                    Buffer[7];


    if (AcpiGbl_DisplayFinalMemStats)
    {
        strcpy (Buffer, "MEMORY");
        (void) AcpiDbDisplayStatistics (Buffer);
    }
#endif

    (void) FUNC1 (AcpiGbl_NamespaceCache);
    AcpiGbl_NamespaceCache = NULL;

    (void) FUNC1 (AcpiGbl_StateCache);
    AcpiGbl_StateCache = NULL;

    (void) FUNC1 (AcpiGbl_OperandCache);
    AcpiGbl_OperandCache = NULL;

    (void) FUNC1 (AcpiGbl_PsNodeCache);
    AcpiGbl_PsNodeCache = NULL;

    (void) FUNC1 (AcpiGbl_PsNodeExtCache);
    AcpiGbl_PsNodeExtCache = NULL;

#ifdef ACPI_ASL_COMPILER
    (void) AcpiOsDeleteCache (AcpiGbl_RegCommentCache);
    AcpiGbl_RegCommentCache = NULL;

    (void) AcpiOsDeleteCache (AcpiGbl_CommentAddrCache);
    AcpiGbl_CommentAddrCache = NULL;

    (void) AcpiOsDeleteCache (AcpiGbl_FileCache);
    AcpiGbl_FileCache = NULL;
#endif

#ifdef ACPI_DBG_TRACK_ALLOCATIONS

    /* Debug only - display leftover memory allocation, if any */

    AcpiUtDumpAllocations (ACPI_UINT32_MAX, NULL);

    /* Free memory lists */

    AcpiOsFree (AcpiGbl_GlobalList);
    AcpiGbl_GlobalList = NULL;

    AcpiOsFree (AcpiGbl_NsNodeList);
    AcpiGbl_NsNodeList = NULL;
#endif

    return (AE_OK);
}