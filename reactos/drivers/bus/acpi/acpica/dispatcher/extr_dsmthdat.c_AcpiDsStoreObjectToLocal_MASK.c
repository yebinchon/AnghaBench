#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT8 ;
typedef  int /*<<< orphan*/  UINT32 ;
struct TYPE_13__ {scalar_t__ Class; int /*<<< orphan*/  Object; } ;
struct TYPE_12__ {int ReferenceCount; scalar_t__ Type; } ;
struct TYPE_14__ {TYPE_2__ Reference; TYPE_1__ Common; } ;
typedef  int /*<<< orphan*/  ACPI_WALK_STATE ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_3__ ACPI_OPERAND_OBJECT ;
typedef  int /*<<< orphan*/  ACPI_NAMESPACE_NODE ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_EXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ACPI_DESC_TYPE_OPERAND ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  ACPI_NO_IMPLICIT_CONVERSION ; 
 scalar_t__ ACPI_REFCLASS_ARG ; 
 scalar_t__ ACPI_REFCLASS_REFOF ; 
 scalar_t__ ACPI_TYPE_LOCAL_REFERENCE ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,TYPE_3__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  DsStoreObjectToLocal ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC12 (
    UINT8                   Type,
    UINT32                  Index,
    ACPI_OPERAND_OBJECT     *ObjDesc,
    ACPI_WALK_STATE         *WalkState)
{
    ACPI_STATUS             Status;
    ACPI_NAMESPACE_NODE     *Node;
    ACPI_OPERAND_OBJECT     *CurrentObjDesc;
    ACPI_OPERAND_OBJECT     *NewObjDesc;


    FUNC2 (DsStoreObjectToLocal);
    FUNC0 ((ACPI_DB_EXEC, "Type=%2.2X Index=%u Obj=%p\n",
        Type, Index, ObjDesc));

    /* Parameter validation */

    if (!ObjDesc)
    {
        FUNC11 (AE_BAD_PARAMETER);
    }

    /* Get the namespace node for the arg/local */

    Status = FUNC5 (Type, Index, WalkState, &Node);
    if (FUNC1 (Status))
    {
        FUNC11 (Status);
    }

    CurrentObjDesc = FUNC8 (Node);
    if (CurrentObjDesc == ObjDesc)
    {
        FUNC0 ((ACPI_DB_EXEC, "Obj=%p already installed!\n",
            ObjDesc));
        FUNC11 (Status);
    }

    /*
     * If the reference count on the object is more than one, we must
     * take a copy of the object before we store. A reference count
     * of exactly 1 means that the object was just created during the
     * evaluation of an expression, and we can safely use it since it
     * is not used anywhere else.
     */
    NewObjDesc = ObjDesc;
    if (ObjDesc->Common.ReferenceCount > 1)
    {
        Status = FUNC9 (
            ObjDesc, &NewObjDesc, WalkState);
        if (FUNC1 (Status))
        {
            FUNC11 (Status);
        }
    }

    /*
     * If there is an object already in this slot, we either
     * have to delete it, or if this is an argument and there
     * is an object reference stored there, we have to do
     * an indirect store!
     */
    if (CurrentObjDesc)
    {
        /*
         * Check for an indirect store if an argument
         * contains an object reference (stored as an Node).
         * We don't allow this automatic dereferencing for
         * locals, since a store to a local should overwrite
         * anything there, including an object reference.
         *
         * If both Arg0 and Local0 contain RefOf (Local4):
         *
         * Store (1, Arg0)             - Causes indirect store to local4
         * Store (1, Local0)           - Stores 1 in local0, overwriting
         *                                  the reference to local4
         * Store (1, DeRefof (Local0)) - Causes indirect store to local4
         *
         * Weird, but true.
         */
        if (Type == ACPI_REFCLASS_ARG)
        {
            /*
             * If we have a valid reference object that came from RefOf(),
             * do the indirect store
             */
            if ((FUNC3 (CurrentObjDesc) ==
                    ACPI_DESC_TYPE_OPERAND) &&
                (CurrentObjDesc->Common.Type ==
                    ACPI_TYPE_LOCAL_REFERENCE) &&
                (CurrentObjDesc->Reference.Class ==
                    ACPI_REFCLASS_REFOF))
            {
                FUNC0 ((ACPI_DB_EXEC,
                    "Arg (%p) is an ObjRef(Node), storing in node %p\n",
                    NewObjDesc, CurrentObjDesc));

                /*
                 * Store this object to the Node (perform the indirect store)
                 * NOTE: No implicit conversion is performed, as per the ACPI
                 * specification rules on storing to Locals/Args.
                 */
                Status = FUNC7 (NewObjDesc,
                    CurrentObjDesc->Reference.Object, WalkState,
                    ACPI_NO_IMPLICIT_CONVERSION);

                /* Remove local reference if we copied the object above */

                if (NewObjDesc != ObjDesc)
                {
                    FUNC10 (NewObjDesc);
                }

                FUNC11 (Status);
            }
        }

        /* Delete the existing object before storing the new one */

        FUNC4 (Type, Index, WalkState);
    }

    /*
     * Install the Obj descriptor (*NewObjDesc) into
     * the descriptor for the Arg or Local.
     * (increments the object reference count by one)
     */
    Status = FUNC6 (Type, Index, NewObjDesc, WalkState);

    /* Remove local reference if we copied the object above */

    if (NewObjDesc != ObjDesc)
    {
        FUNC10 (NewObjDesc);
    }

    FUNC11 (Status);
}