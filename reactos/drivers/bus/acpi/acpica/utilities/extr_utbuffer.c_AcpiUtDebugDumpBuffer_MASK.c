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
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int UINT32 ;

/* Variables and functions */
 int ACPI_LV_TABLES ; 
 int AcpiDbgLayer ; 
 int AcpiDbgLevel ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 

void
FUNC1 (
    UINT8                   *Buffer,
    UINT32                  Count,
    UINT32                  Display,
    UINT32                  ComponentId)
{

    /* Only dump the buffer if tracing is enabled */

    if (!((ACPI_LV_TABLES & AcpiDbgLevel) &&
        (ComponentId & AcpiDbgLayer)))
    {
        return;
    }

    FUNC0 (Buffer, Count, Display, 0);
}