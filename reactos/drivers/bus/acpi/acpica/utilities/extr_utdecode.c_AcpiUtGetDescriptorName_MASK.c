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

/* Variables and functions */
 size_t ACPI_DESC_TYPE_MAX ; 
 size_t FUNC0 (void*) ; 
 char const** AcpiGbl_DescTypeNames ; 

const char *
FUNC1 (
    void                    *Object)
{

    if (!Object)
    {
        return ("NULL OBJECT");
    }

    if (FUNC0 (Object) > ACPI_DESC_TYPE_MAX)
    {
        return ("Not a Descriptor");
    }

    return (AcpiGbl_DescTypeNames[FUNC0 (Object)]);
}