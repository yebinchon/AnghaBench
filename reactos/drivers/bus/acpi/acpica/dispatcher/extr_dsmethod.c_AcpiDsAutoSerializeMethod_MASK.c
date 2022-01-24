#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_7__ ;
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
struct TYPE_22__ {int /*<<< orphan*/  Integer; } ;
struct TYPE_28__ {int /*<<< orphan*/  OwnerId; TYPE_1__ Name; } ;
struct TYPE_24__ {int /*<<< orphan*/  AmlLength; int /*<<< orphan*/  AmlStart; } ;
struct TYPE_27__ {TYPE_3__ Method; } ;
struct TYPE_23__ {TYPE_7__* Node; } ;
struct TYPE_26__ {TYPE_2__ Common; } ;
struct TYPE_25__ {int /*<<< orphan*/  DescendingCallback; } ;
typedef  TYPE_4__ ACPI_WALK_STATE ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_5__ ACPI_PARSE_OBJECT ;
typedef  TYPE_6__ ACPI_OPERAND_OBJECT ;
typedef  TYPE_7__ ACPI_NAMESPACE_NODE ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_PARSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_7__*) ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AML_METHOD_OP ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  AcpiDsDetectNamedOpcodes ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,TYPE_5__*,TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_7__*) ; 
 int /*<<< orphan*/  DsAutoSerializeMethod ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC13 (
    ACPI_NAMESPACE_NODE     *Node,
    ACPI_OPERAND_OBJECT     *ObjDesc)
{
    ACPI_STATUS             Status;
    ACPI_PARSE_OBJECT       *Op = NULL;
    ACPI_WALK_STATE         *WalkState;


    FUNC2 (DsAutoSerializeMethod, Node);


    FUNC0 ((ACPI_DB_PARSE,
        "Method auto-serialization parse [%4.4s] %p\n",
        FUNC11 (Node), Node));

    /* Create/Init a root op for the method parse tree */

    Op = FUNC6 (AML_METHOD_OP, ObjDesc->Method.AmlStart);
    if (!Op)
    {
        FUNC12 (AE_NO_MEMORY);
    }

    FUNC10 (Op, Node->Name.Integer);
    Op->Common.Node = Node;

    /* Create and initialize a new walk state */

    WalkState = FUNC3 (Node->OwnerId, NULL, NULL, NULL);
    if (!WalkState)
    {
        FUNC8 (Op);
        FUNC12 (AE_NO_MEMORY);
    }

    Status = FUNC5 (WalkState, Op, Node,
        ObjDesc->Method.AmlStart, ObjDesc->Method.AmlLength, NULL, 0);
    if (FUNC1 (Status))
    {
        FUNC4 (WalkState);
        FUNC8 (Op);
        FUNC12 (Status);
    }

    WalkState->DescendingCallback = AcpiDsDetectNamedOpcodes;

    /* Parse the method, scan for creation of named objects */

    Status = FUNC9 (WalkState);

    FUNC7 (Op);
    FUNC12 (Status);
}