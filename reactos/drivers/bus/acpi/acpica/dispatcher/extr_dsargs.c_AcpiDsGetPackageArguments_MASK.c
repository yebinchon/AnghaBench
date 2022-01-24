#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  AmlStart; int /*<<< orphan*/  AmlLength; int /*<<< orphan*/ * Node; } ;
struct TYPE_6__ {int Flags; } ;
struct TYPE_8__ {TYPE_2__ Package; TYPE_1__ Common; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_3__ ACPI_OPERAND_OBJECT ;
typedef  int /*<<< orphan*/  ACPI_NAMESPACE_NODE ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_EXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  AE_AML_INTERNAL ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_OK ; 
 int AOPOBJ_DATA_VALID ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DsGetPackageArguments ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC5 (
    ACPI_OPERAND_OBJECT     *ObjDesc)
{
    ACPI_NAMESPACE_NODE     *Node;
    ACPI_STATUS             Status;


    FUNC2 (DsGetPackageArguments, ObjDesc);


    if (ObjDesc->Common.Flags & AOPOBJ_DATA_VALID)
    {
        FUNC4 (AE_OK);
    }

    /* Get the Package node */

    Node = ObjDesc->Package.Node;
    if (!Node)
    {
        FUNC1 ((AE_INFO,
            "No pointer back to namespace node in package %p", ObjDesc));
        FUNC4 (AE_AML_INTERNAL);
    }

    FUNC0 ((ACPI_DB_EXEC, "Package Argument Init, AML Ptr: %p\n",
        ObjDesc->Package.AmlStart));

    /* Execute the AML code for the TermArg arguments */

    Status = FUNC3 (Node, Node,
        ObjDesc->Package.AmlLength, ObjDesc->Package.AmlStart);

    FUNC4 (Status);
}