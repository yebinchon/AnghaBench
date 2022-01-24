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
typedef  scalar_t__ BOOLEAN ;
typedef  int /*<<< orphan*/  ACPI_TRACE_EVENT_TYPE ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_TRACE_POINT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ExTracePoint ; 

void
FUNC3 (
    ACPI_TRACE_EVENT_TYPE   Type,
    BOOLEAN                 Begin,
    UINT8                   *Aml,
    char                    *Pathname)
{

    FUNC1 (ExTracePoint);


    if (Pathname)
    {
        FUNC0 ((ACPI_DB_TRACE_POINT,
            "%s %s [0x%p:%s] execution.\n",
            FUNC2 (Type), Begin ? "Begin" : "End",
            Aml, Pathname));
    }
    else
    {
        FUNC0 (*(ACPI_DB_TRACE_POINT,
            "%s %s [0x%p] execution.\n",
            FUNC2 (Type), Begin ? "Begin" : "End",
            Aml));
    }
}