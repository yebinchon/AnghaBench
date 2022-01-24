#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT32 ;
struct TYPE_17__ {scalar_t__ ReturnBtype; int /*<<< orphan*/  NodeFlags; int /*<<< orphan*/  FullPathname; } ;
struct TYPE_14__ {int /*<<< orphan*/  Ascii; } ;
struct TYPE_15__ {int /*<<< orphan*/  Type; TYPE_1__ Name; } ;
struct TYPE_16__ {TYPE_2__ Node; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_3__ ACPI_OPERAND_OBJECT ;
typedef  TYPE_4__ ACPI_EVALUATE_INFO ;

/* Variables and functions */
 scalar_t__ ACPI_DESC_TYPE_NAMED ; 
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 scalar_t__ ACPI_NOT_PACKAGE_ELEMENT ; 
 scalar_t__ ACPI_RTYPE_ANY ; 
 scalar_t__ ACPI_RTYPE_REFERENCE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_AML_OPERAND_TYPE ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,TYPE_3__*) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,scalar_t__,scalar_t__,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC6 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC9 (
    ACPI_EVALUATE_INFO          *Info,
    ACPI_OPERAND_OBJECT         **ReturnObjectPtr,
    UINT32                      ExpectedBtypes,
    UINT32                      PackageIndex)
{
    ACPI_OPERAND_OBJECT         *ReturnObject = *ReturnObjectPtr;
    ACPI_STATUS                 Status = AE_OK;
    char                        TypeBuffer[96]; /* Room for 10 types */


    /* A Namespace node should not get here, but make sure */

    if (ReturnObject &&
        FUNC0 (ReturnObject) == ACPI_DESC_TYPE_NAMED)
    {
        FUNC2 ((AE_INFO, Info->FullPathname, Info->NodeFlags,
            "Invalid return type - Found a Namespace node [%4.4s] type %s",
            ReturnObject->Node.Name.Ascii,
            FUNC8 (ReturnObject->Node.Type)));
        return (AE_AML_OPERAND_TYPE);
    }

    /*
     * Convert the object type (ACPI_TYPE_xxx) to a bitmapped object type.
     * The bitmapped type allows multiple possible return types.
     *
     * Note, the cases below must handle all of the possible types returned
     * from all of the predefined names (including elements of returned
     * packages)
     */
    Info->ReturnBtype = FUNC4 (ReturnObject);
    if (Info->ReturnBtype == ACPI_RTYPE_ANY)
    {
        /* Not one of the supported objects, must be incorrect */
        goto TypeErrorExit;
    }

    /* For reference objects, check that the reference type is correct */

    if ((Info->ReturnBtype & ExpectedBtypes) == ACPI_RTYPE_REFERENCE)
    {
        Status = FUNC3 (Info, ReturnObject);
        return (Status);
    }

    /* Attempt simple repair of the returned object if necessary */

    Status = FUNC5 (Info, ExpectedBtypes,
        PackageIndex, ReturnObjectPtr);
    if (FUNC1 (Status))
    {
        return (AE_OK); /* Successful repair */
    }


TypeErrorExit:

    /* Create a string with all expected types for this predefined object */

    FUNC6 (TypeBuffer, ExpectedBtypes);

    if (!ReturnObject)
    {
        FUNC2 ((AE_INFO, Info->FullPathname, Info->NodeFlags,
            "Expected return object of type %s",
            TypeBuffer));
    }
    else if (PackageIndex == ACPI_NOT_PACKAGE_ELEMENT)
    {
        FUNC2 ((AE_INFO, Info->FullPathname, Info->NodeFlags,
            "Return type mismatch - found %s, expected %s",
            FUNC7 (ReturnObject), TypeBuffer));
    }
    else
    {
        FUNC2 ((AE_INFO, Info->FullPathname, Info->NodeFlags,
            "Return Package type mismatch at index %u - "
            "found %s, expected %s", PackageIndex,
            FUNC7 (ReturnObject), TypeBuffer));
    }

    return (AE_AML_OPERAND_TYPE);
}