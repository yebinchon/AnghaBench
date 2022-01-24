#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT8 ;
typedef  size_t UINT32 ;
struct TYPE_3__ {int /*<<< orphan*/ * Arguments; int /*<<< orphan*/ * LocalVariables; } ;
typedef  TYPE_1__ ACPI_WALK_STATE ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int /*<<< orphan*/  ACPI_NAMESPACE_NODE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 size_t ACPI_METHOD_MAX_ARG ; 
 size_t ACPI_METHOD_MAX_LOCAL ; 
#define  ACPI_REFCLASS_ARG 129 
#define  ACPI_REFCLASS_LOCAL 128 
 int /*<<< orphan*/  AE_AML_INVALID_INDEX ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  AE_TYPE ; 
 int /*<<< orphan*/  DsMethodDataGetNode ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC3 (
    UINT8                   Type,
    UINT32                  Index,
    ACPI_WALK_STATE         *WalkState,
    ACPI_NAMESPACE_NODE     **Node)
{
    FUNC1 (DsMethodDataGetNode);


    /*
     * Method Locals and Arguments are supported
     */
    switch (Type)
    {
    case ACPI_REFCLASS_LOCAL:

        if (Index > ACPI_METHOD_MAX_LOCAL)
        {
            FUNC0 ((AE_INFO,
                "Local index %u is invalid (max %u)",
                Index, ACPI_METHOD_MAX_LOCAL));
            FUNC2 (AE_AML_INVALID_INDEX);
        }

        /* Return a pointer to the pseudo-node */

        *Node = &WalkState->LocalVariables[Index];
        break;

    case ACPI_REFCLASS_ARG:

        if (Index > ACPI_METHOD_MAX_ARG)
        {
            FUNC0 ((AE_INFO,
                "Arg index %u is invalid (max %u)",
                Index, ACPI_METHOD_MAX_ARG));
            FUNC2 (AE_AML_INVALID_INDEX);
        }

        /* Return a pointer to the pseudo-node */

        *Node = &WalkState->Arguments[Index];
        break;

    default:

        FUNC0 ((AE_INFO, "Type %u is invalid", Type));
        FUNC2 (AE_TYPE);
    }

    FUNC2 (AE_OK);
}