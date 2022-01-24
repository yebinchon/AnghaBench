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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_MTX_INTERPRETER ; 
 int /*<<< orphan*/  ACPI_MTX_NAMESPACE ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ExExitInterpreter ; 
 int /*<<< orphan*/  return_VOID ; 

void
FUNC4 (
    void)
{
    ACPI_STATUS             Status;


    FUNC2 (ExExitInterpreter);


    Status = FUNC3 (ACPI_MTX_NAMESPACE);
    if (FUNC1 (Status))
    {
        FUNC0 ((AE_INFO, "Could not release AML Namespace mutex"));
    }
    Status = FUNC3 (ACPI_MTX_INTERPRETER);
    if (FUNC1 (Status))
    {
        FUNC0 ((AE_INFO, "Could not release AML Interpreter mutex"));
    }

    return_VOID;
}