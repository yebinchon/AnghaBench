#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT32 ;
struct TYPE_10__ {size_t Count; TYPE_3__* Elements; } ;
struct TYPE_11__ {TYPE_4__ Package; } ;
struct TYPE_8__ {int Length; int /*<<< orphan*/  Pointer; } ;
struct TYPE_7__ {int /*<<< orphan*/  Value; } ;
struct TYPE_9__ {int Type; TYPE_2__ String; TYPE_1__ Integer; } ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  TYPE_5__ ACPI_OBJECT ;
typedef  int /*<<< orphan*/  ACPI_METHOD_ARGUMENT ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
#define  ACPI_TYPE_INTEGER 129 
#define  ACPI_TYPE_STRING 128 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  STATUS_UNSUCCESSFUL ; 

__attribute__((used)) static
NTSTATUS
FUNC5(ACPI_METHOD_ARGUMENT *Argument,
                        ACPI_OBJECT *Package)
{
    ACPI_METHOD_ARGUMENT *Ptr;
    UINT32 i;

    Ptr = Argument;
    for (i = 0; i < Package->Package.Count; i++)
    {
        switch (Package->Package.Elements[i].Type)
        {
            case ACPI_TYPE_INTEGER:
                FUNC3("Integer %lu\n", sizeof(ACPI_METHOD_ARGUMENT));
                FUNC1(Ptr, Package->Package.Elements[i].Integer.Value);
                break;

            case ACPI_TYPE_STRING:
                FUNC3("String %lu\n", Package->Package.Elements[i].String.Length);
                FUNC2(Ptr, Package->Package.Elements[i].String.Pointer);
                break;

            default:
                FUNC4("Unsupported element type %lu\n", Package->Package.Elements[i].Type);
                return STATUS_UNSUCCESSFUL;
        }

        Ptr = FUNC0(Ptr);
    }

    return STATUS_SUCCESS;
}