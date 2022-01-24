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
typedef  int /*<<< orphan*/  UINT32 ;
struct TYPE_8__ {int /*<<< orphan*/  PackageInit; int /*<<< orphan*/  FieldInit; int /*<<< orphan*/  PackageCount; int /*<<< orphan*/  BufferCount; int /*<<< orphan*/  FieldCount; int /*<<< orphan*/  OpRegionCount; int /*<<< orphan*/  ObjectCount; } ;
struct TYPE_6__ {int Flags; } ;
struct TYPE_7__ {TYPE_1__ Common; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_2__ ACPI_OPERAND_OBJECT ;
typedef  int ACPI_OBJECT_TYPE ;
typedef  int /*<<< orphan*/  ACPI_NAMESPACE_NODE ;
typedef  TYPE_3__ ACPI_INIT_WALK_INFO ;
typedef  scalar_t__ ACPI_HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
#define  ACPI_TYPE_BUFFER 132 
#define  ACPI_TYPE_BUFFER_FIELD 131 
#define  ACPI_TYPE_LOCAL_BANK_FIELD 130 
#define  ACPI_TYPE_PACKAGE 129 
#define  ACPI_TYPE_REGION 128 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  AE_TYPE ; 
 int AOPOBJ_DATA_VALID ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  NsInitOneObject ; 

__attribute__((used)) static ACPI_STATUS
FUNC11 (
    ACPI_HANDLE             ObjHandle,
    UINT32                  Level,
    void                    *Context,
    void                    **ReturnValue)
{
    ACPI_OBJECT_TYPE        Type;
    ACPI_STATUS             Status = AE_OK;
    ACPI_INIT_WALK_INFO     *Info = (ACPI_INIT_WALK_INFO *) Context;
    ACPI_NAMESPACE_NODE     *Node = (ACPI_NAMESPACE_NODE *) ObjHandle;
    ACPI_OPERAND_OBJECT     *ObjDesc;


    FUNC2 (NsInitOneObject);


    Info->ObjectCount++;

    /* And even then, we are only interested in a few object types */

    Type = FUNC7 (ObjHandle);
    ObjDesc = FUNC6 (Node);
    if (!ObjDesc)
    {
        return (AE_OK);
    }

    /* Increment counters for object types we are looking for */

    switch (Type)
    {
    case ACPI_TYPE_REGION:

        Info->OpRegionCount++;
        break;

    case ACPI_TYPE_BUFFER_FIELD:

        Info->FieldCount++;
        break;

    case ACPI_TYPE_LOCAL_BANK_FIELD:

        Info->FieldCount++;
        break;

    case ACPI_TYPE_BUFFER:

        Info->BufferCount++;
        break;

    case ACPI_TYPE_PACKAGE:

        Info->PackageCount++;
        break;

    default:

        /* No init required, just exit now */

        return (AE_OK);
    }

    /* If the object is already initialized, nothing else to do */

    if (ObjDesc->Common.Flags & AOPOBJ_DATA_VALID)
    {
        return (AE_OK);
    }

    /* Must lock the interpreter before executing AML code */

    FUNC4 ();

    /*
     * Only initialization of Package objects can be deferred, in order
     * to support forward references.
     */
    switch (Type)
    {
    case ACPI_TYPE_LOCAL_BANK_FIELD:

        /* TBD: BankFields do not require deferred init, remove this code */

        Info->FieldInit++;
        Status = FUNC3 (ObjDesc);
        break;

    case ACPI_TYPE_PACKAGE:

        /* Complete the initialization/resolution of the package object */

        Info->PackageInit++;
        Status = FUNC8 (ObjHandle, Level, NULL, NULL);
        break;

    default:

        /* No other types should get here */

        Status = AE_TYPE;
        FUNC0 ((AE_INFO, Status,
            "Opcode is not deferred [%4.4s] (%s)",
            FUNC9 (Node), FUNC10 (Type)));
        break;
    }

    if (FUNC1 (Status))
    {
        FUNC0 ((AE_INFO, Status,
            "Could not execute arguments for [%4.4s] (%s)",
            FUNC9 (Node), FUNC10 (Type)));
    }

    /*
     * We ignore errors from above, and always return OK, since we don't want
     * to abort the walk on any single error.
     */
    FUNC5 ();
    return (AE_OK);
}