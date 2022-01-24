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
typedef  int /*<<< orphan*/  UINT32 ;
typedef  size_t ACPI_OBJECT_TYPE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ACPI_NS_LOCAL ; 
 int ACPI_NS_NORMAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_INFO ; 
 int* AcpiGbl_NsProperties ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int /*<<< orphan*/  NsLocal ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

UINT32
FUNC4 (
    ACPI_OBJECT_TYPE        Type)
{
    FUNC0 (NsLocal);


    if (!FUNC2 (Type))
    {
        /* Type code out of range  */

        FUNC1 ((AE_INFO, "Invalid Object Type 0x%X", Type));
        FUNC3 (ACPI_NS_NORMAL);
    }

    FUNC3 (AcpiGbl_NsProperties[Type] & ACPI_NS_LOCAL);
}