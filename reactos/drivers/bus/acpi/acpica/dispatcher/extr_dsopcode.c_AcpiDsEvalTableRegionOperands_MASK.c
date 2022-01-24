#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_8__ ;
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT32 ;
struct TYPE_22__ {int /*<<< orphan*/  Flags; int /*<<< orphan*/  Length; int /*<<< orphan*/  Address; } ;
struct TYPE_21__ {int /*<<< orphan*/  Pointer; } ;
struct TYPE_26__ {TYPE_4__ Region; TYPE_3__ String; } ;
struct TYPE_19__ {TYPE_7__* Arg; } ;
struct TYPE_20__ {int /*<<< orphan*/  AmlOpcode; TYPE_1__ Value; int /*<<< orphan*/ * Node; } ;
struct TYPE_25__ {TYPE_2__ Common; } ;
struct TYPE_24__ {int /*<<< orphan*/  Length; } ;
struct TYPE_23__ {TYPE_8__** Operands; } ;
typedef  TYPE_5__ ACPI_WALK_STATE ;
typedef  TYPE_6__ ACPI_TABLE_HEADER ;
typedef  scalar_t__ ACPI_STATUS ;
typedef  TYPE_7__ ACPI_PARSE_OBJECT ;
typedef  TYPE_8__ ACPI_OPERAND_OBJECT ;
typedef  int /*<<< orphan*/  ACPI_NAMESPACE_NODE ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_EXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*) ; 
 int /*<<< orphan*/  ACPI_WALK_OPERANDS ; 
 int /*<<< orphan*/  AE_INFO ; 
 scalar_t__ AE_NOT_EXIST ; 
 scalar_t__ AE_NOT_FOUND ; 
 int /*<<< orphan*/  AOPOBJ_DATA_VALID ; 
 scalar_t__ FUNC6 (TYPE_5__*,TYPE_7__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,TYPE_6__**) ; 
 TYPE_8__* FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_8__*) ; 
 int /*<<< orphan*/  DsEvalTableRegionOperands ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 

ACPI_STATUS
FUNC13 (
    ACPI_WALK_STATE         *WalkState,
    ACPI_PARSE_OBJECT       *Op)
{
    ACPI_STATUS             Status;
    ACPI_OPERAND_OBJECT     *ObjDesc;
    ACPI_OPERAND_OBJECT     **Operand;
    ACPI_NAMESPACE_NODE     *Node;
    ACPI_PARSE_OBJECT       *NextOp;
    ACPI_TABLE_HEADER       *Table;
    UINT32                  TableIndex;


    FUNC4 (DsEvalTableRegionOperands, Op);


    /*
     * This is where we evaluate the Signature string, OemId string,
     * and OemTableId string of the Data Table Region declaration
     */
    Node =  Op->Common.Node;

    /* NextOp points to Signature string op */

    NextOp = Op->Common.Value.Arg;

    /*
     * Evaluate/create the Signature string, OemId string,
     * and OemTableId string operands
     */
    Status = FUNC6 (WalkState, NextOp);
    if (FUNC2 (Status))
    {
        FUNC12 (Status);
    }

    Operand = &WalkState->Operands[0];

    /*
     * Resolve the Signature string, OemId string,
     * and OemTableId string operands
     */
    Status = FUNC7 (
        Op->Common.AmlOpcode, ACPI_WALK_OPERANDS, WalkState);
    if (FUNC2 (Status))
    {
        goto Cleanup;
    }

    /* Find the ACPI table */

    Status = FUNC10 (
        Operand[0]->String.Pointer,
        Operand[1]->String.Pointer,
        Operand[2]->String.Pointer, &TableIndex);
    if (FUNC2 (Status))
    {
        if (Status == AE_NOT_FOUND)
        {
            FUNC1 ((AE_INFO,
                "ACPI Table [%4.4s] OEM:(%s, %s) not found in RSDT/XSDT",
                Operand[0]->String.Pointer,
                Operand[1]->String.Pointer,
                Operand[2]->String.Pointer));
        }
        goto Cleanup;
    }

    Status = FUNC8 (TableIndex, &Table);
    if (FUNC2 (Status))
    {
        goto Cleanup;
    }

    ObjDesc = FUNC9 (Node);
    if (!ObjDesc)
    {
        Status = AE_NOT_EXIST;
        goto Cleanup;
    }

    ObjDesc->Region.Address = FUNC5 (Table);
    ObjDesc->Region.Length = Table->Length;

    FUNC0 ((ACPI_DB_EXEC, "RgnObj %p Addr %8.8X%8.8X Len %X\n",
        ObjDesc, FUNC3 (ObjDesc->Region.Address),
        ObjDesc->Region.Length));

    /* Now the address and length are valid for this opregion */

    ObjDesc->Region.Flags |= AOPOBJ_DATA_VALID;

Cleanup:
    FUNC11 (Operand[0]);
    FUNC11 (Operand[1]);
    FUNC11 (Operand[2]);

    FUNC12 (Status);
}