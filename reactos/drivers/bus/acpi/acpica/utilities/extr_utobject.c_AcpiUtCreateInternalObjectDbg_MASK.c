#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT8 ;
typedef  int /*<<< orphan*/  UINT32 ;
struct TYPE_7__ {int ReferenceCount; scalar_t__ Type; TYPE_2__* NextObject; } ;
struct TYPE_8__ {TYPE_1__ Common; } ;
typedef  TYPE_2__ ACPI_OPERAND_OBJECT ;
typedef  int ACPI_OBJECT_TYPE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  ACPI_TYPE_BUFFER_FIELD 130 
#define  ACPI_TYPE_LOCAL_BANK_FIELD 129 
 scalar_t__ ACPI_TYPE_LOCAL_EXTRA ; 
#define  ACPI_TYPE_REGION 128 
 TYPE_2__* FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  UtCreateInternalObjectDbg ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

ACPI_OPERAND_OBJECT  *
FUNC5 (
    const char              *ModuleName,
    UINT32                  LineNumber,
    UINT32                  ComponentId,
    ACPI_OBJECT_TYPE        Type)
{
    ACPI_OPERAND_OBJECT     *Object;
    ACPI_OPERAND_OBJECT     *SecondObject;


    FUNC0 (UtCreateInternalObjectDbg,
        FUNC3 (Type));


    /* Allocate the raw object descriptor */

    Object = FUNC1 (
        ModuleName, LineNumber, ComponentId);
    if (!Object)
    {
        FUNC4 (NULL);
    }

    switch (Type)
    {
    case ACPI_TYPE_REGION:
    case ACPI_TYPE_BUFFER_FIELD:
    case ACPI_TYPE_LOCAL_BANK_FIELD:

        /* These types require a secondary object */

        SecondObject = FUNC1 (
            ModuleName, LineNumber, ComponentId);
        if (!SecondObject)
        {
            FUNC2 (Object);
            FUNC4 (NULL);
        }

        SecondObject->Common.Type = ACPI_TYPE_LOCAL_EXTRA;
        SecondObject->Common.ReferenceCount = 1;

        /* Link the second object to the first */

        Object->Common.NextObject = SecondObject;
        break;

    default:

        /* All others have no secondary object */
        break;
    }

    /* Save the object type in the object descriptor */

    Object->Common.Type = (UINT8) Type;

    /* Init the reference count */

    Object->Common.ReferenceCount = 1;

    /* Any per-type initialization should go here */

    FUNC4 (Object);
}