#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT8 ;
typedef  size_t UINT32 ;
typedef  int /*<<< orphan*/  UINT16 ;
struct TYPE_13__ {size_t ParamCount; TYPE_5__* Node; int /*<<< orphan*/  FullPathname; TYPE_4__** Parameters; TYPE_2__* Predefined; } ;
struct TYPE_12__ {int Flags; } ;
struct TYPE_10__ {size_t Type; } ;
struct TYPE_11__ {TYPE_3__ Common; } ;
struct TYPE_8__ {int /*<<< orphan*/  ArgumentList; } ;
struct TYPE_9__ {TYPE_1__ Info; } ;
typedef  TYPE_6__ ACPI_EVALUATE_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_WARN_ALWAYS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_INFO ; 
 int ANOBJ_EVALUATED ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4 (
    ACPI_EVALUATE_INFO          *Info)
{
    UINT16                      ArgTypeList;
    UINT8                       ArgCount;
    UINT8                       ArgType;
    UINT8                       UserArgType;
    UINT32                      i;


    /*
     * If not a predefined name, cannot typecheck args, because
     * we have no idea what argument types are expected.
     * Also, ignore typecheck if warnings/errors if this method
     * has already been evaluated at least once -- in order
     * to suppress repetitive messages.
     */
    if (!Info->Predefined || (Info->Node->Flags & ANOBJ_EVALUATED))
    {
        return;
    }

    ArgTypeList = Info->Predefined->Info.ArgumentList;
    ArgCount = FUNC2 (ArgTypeList);

    /* Typecheck all arguments */

    for (i = 0; ((i < ArgCount) && (i < Info->ParamCount)); i++)
    {
        ArgType = FUNC3 (ArgTypeList);
        UserArgType = Info->Parameters[i]->Common.Type;

        if (UserArgType != ArgType)
        {
            FUNC0 ((AE_INFO, Info->FullPathname, ACPI_WARN_ALWAYS,
                "Argument #%u type mismatch - "
                "Found [%s], ACPI requires [%s]", (i + 1),
                FUNC1 (UserArgType),
                FUNC1 (ArgType)));

            /* Prevent any additional typechecking for this method */

            Info->Node->Flags |= ANOBJ_EVALUATED;
        }
    }
}