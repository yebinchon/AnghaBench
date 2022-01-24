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
typedef  scalar_t__ UINT16 ;
typedef  scalar_t__ ACPI_RS_LENGTH ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int ACPI_RESOURCE_NAME_LARGE ; 
 int ACPI_RESOURCE_NAME_SMALL_LENGTH_MASK ; 
 int /*<<< orphan*/  UINT8 ; 

UINT16
FUNC4 (
    void                    *Aml)
{
    ACPI_RS_LENGTH          ResourceLength;


    FUNC1 ();


    /*
     * Byte 0 contains the descriptor name (Resource Type)
     * Examine the large/small bit in the resource header
     */
    if (FUNC2 (Aml) & ACPI_RESOURCE_NAME_LARGE)
    {
        /* Large Resource type -- bytes 1-2 contain the 16-bit length */

        FUNC3 (&ResourceLength, FUNC0 (UINT8, Aml, 1));

    }
    else
    {
        /* Small Resource type -- bits 2:0 of byte 0 contain the length */

        ResourceLength = (UINT16) (FUNC2 (Aml) &
            ACPI_RESOURCE_NAME_SMALL_LENGTH_MASK);
    }

    return (ResourceLength);
}