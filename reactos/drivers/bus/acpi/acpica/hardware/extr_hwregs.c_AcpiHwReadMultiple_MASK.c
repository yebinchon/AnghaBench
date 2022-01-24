#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT64 ;
typedef  int UINT32 ;
struct TYPE_5__ {scalar_t__ Address; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_1__ ACPI_GENERIC_ADDRESS ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,TYPE_1__*) ; 

__attribute__((used)) static ACPI_STATUS
FUNC2 (
    UINT32                  *Value,
    ACPI_GENERIC_ADDRESS    *RegisterA,
    ACPI_GENERIC_ADDRESS    *RegisterB)
{
    UINT32                  ValueA = 0;
    UINT32                  ValueB = 0;
    UINT64                  Value64;
    ACPI_STATUS             Status;


    /* The first register is always required */

    Status = FUNC1 (&Value64, RegisterA);
    if (FUNC0 (Status))
    {
        return (Status);
    }
    ValueA = (UINT32) Value64;

    /* Second register is optional */

    if (RegisterB->Address)
    {
        Status = FUNC1 (&Value64, RegisterB);
        if (FUNC0 (Status))
        {
            return (Status);
        }
        ValueB = (UINT32) Value64;
    }

    /*
     * OR the two return values together. No shifting or masking is necessary,
     * because of how the PM1 registers are defined in the ACPI specification:
     *
     * "Although the bits can be split between the two register blocks (each
     * register block has a unique pointer within the FADT), the bit positions
     * are maintained. The register block with unimplemented bits (that is,
     * those implemented in the other register block) always returns zeros,
     * and writes have no side effects"
     */
    *Value = (ValueA | ValueB);
    return (AE_OK);
}