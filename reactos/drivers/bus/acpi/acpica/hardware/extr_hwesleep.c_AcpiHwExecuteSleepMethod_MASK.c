#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT64 ;
typedef  scalar_t__ UINT32 ;
struct TYPE_5__ {scalar_t__ Value; } ;
struct TYPE_7__ {TYPE_1__ Integer; int /*<<< orphan*/  Type; } ;
struct TYPE_6__ {int Count; TYPE_3__* Pointer; } ;
typedef  scalar_t__ ACPI_STATUS ;
typedef  TYPE_2__ ACPI_OBJECT_LIST ;
typedef  TYPE_3__ ACPI_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_TYPE_INTEGER ; 
 int /*<<< orphan*/  AE_INFO ; 
 scalar_t__ AE_NOT_FOUND ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  HwExecuteSleepMethod ; 
 int /*<<< orphan*/  return_VOID ; 

void
FUNC4 (
    char                    *MethodPathname,
    UINT32                  IntegerArgument)
{
    ACPI_OBJECT_LIST        ArgList;
    ACPI_OBJECT             Arg;
    ACPI_STATUS             Status;


    FUNC2 (HwExecuteSleepMethod);


    /* One argument, IntegerArgument; No return value expected */

    ArgList.Count = 1;
    ArgList.Pointer = &Arg;
    Arg.Type = ACPI_TYPE_INTEGER;
    Arg.Integer.Value = (UINT64) IntegerArgument;

    Status = FUNC3 (NULL, MethodPathname, &ArgList, NULL);
    if (FUNC1 (Status) && Status != AE_NOT_FOUND)
    {
        FUNC0 ((AE_INFO, Status, "While executing method %s",
            MethodPathname));
    }

    return_VOID;
}