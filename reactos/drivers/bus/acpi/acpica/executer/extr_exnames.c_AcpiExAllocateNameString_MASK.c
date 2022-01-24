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
typedef  int UINT32 ;

/* Variables and functions */
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int ACPI_NAMESEG_SIZE ; 
 int ACPI_UINT32_MAX ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AML_DUAL_NAME_PREFIX ; 
 int /*<<< orphan*/  AML_MULTI_NAME_PREFIX ; 
 int /*<<< orphan*/  AML_PARENT_PREFIX ; 
 int /*<<< orphan*/  AML_ROOT_PREFIX ; 
 int /*<<< orphan*/  ExAllocateNameString ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static char *
FUNC4 (
    UINT32                  PrefixCount,
    UINT32                  NumNameSegs)
{
    char                    *TempPtr;
    char                    *NameString;
    UINT32                   SizeNeeded;

    FUNC2 (ExAllocateNameString);


    /*
     * Allow room for all \ and ^ prefixes, all segments and a MultiNamePrefix.
     * Also, one byte for the null terminator.
     * This may actually be somewhat longer than needed.
     */
    if (PrefixCount == ACPI_UINT32_MAX)
    {
        /* Special case for root */

        SizeNeeded = 1 + (ACPI_NAMESEG_SIZE * NumNameSegs) + 2 + 1;
    }
    else
    {
        SizeNeeded = PrefixCount + (ACPI_NAMESEG_SIZE * NumNameSegs) + 2 + 1;
    }

    /*
     * Allocate a buffer for the name.
     * This buffer must be deleted by the caller!
     */
    NameString = FUNC0 (SizeNeeded);
    if (!NameString)
    {
        FUNC1 ((AE_INFO,
            "Could not allocate size %u", SizeNeeded));
        FUNC3 (NULL);
    }

    TempPtr = NameString;

    /* Set up Root or Parent prefixes if needed */

    if (PrefixCount == ACPI_UINT32_MAX)
    {
        *TempPtr++ = AML_ROOT_PREFIX;
    }
    else
    {
        while (PrefixCount--)
        {
            *TempPtr++ = AML_PARENT_PREFIX;
        }
    }


    /* Set up Dual or Multi prefixes if needed */

    if (NumNameSegs > 2)
    {
        /* Set up multi prefixes   */

        *TempPtr++ = AML_MULTI_NAME_PREFIX;
        *TempPtr++ = (char) NumNameSegs;
    }
    else if (2 == NumNameSegs)
    {
        /* Set up dual prefixes */

        *TempPtr++ = AML_DUAL_NAME_PREFIX;
    }

    /*
     * Terminate string following prefixes. AcpiExNameSegment() will
     * append the segment(s)
     */
    *TempPtr = 0;

    FUNC3 (NameString);
}