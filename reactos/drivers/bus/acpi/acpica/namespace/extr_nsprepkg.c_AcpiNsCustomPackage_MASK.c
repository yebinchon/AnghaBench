#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT32 ;
struct TYPE_12__ {int /*<<< orphan*/  FullPathname; int /*<<< orphan*/  NodeFlags; } ;
struct TYPE_10__ {scalar_t__ Value; } ;
struct TYPE_9__ {scalar_t__ Type; } ;
struct TYPE_11__ {TYPE_2__ Integer; TYPE_1__ Common; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_3__ ACPI_OPERAND_OBJECT ;
typedef  TYPE_4__ ACPI_EVALUATE_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_REPAIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_RTYPE_INTEGER ; 
 int /*<<< orphan*/  ACPI_RTYPE_STRING ; 
 scalar_t__ ACPI_TYPE_INTEGER ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_AML_OPERAND_TYPE ; 
 int /*<<< orphan*/  AE_AML_OPERAND_VALUE ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,TYPE_3__**,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  NsCustomPackage ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ACPI_STATUS
FUNC6 (
    ACPI_EVALUATE_INFO          *Info,
    ACPI_OPERAND_OBJECT         **Elements,
    UINT32                      Count)
{
    UINT32                      ExpectedCount;
    UINT32                      Version;
    ACPI_STATUS                 Status = AE_OK;


    FUNC2 (NsCustomPackage);


    /* Get version number, must be Integer */

    if ((*Elements)->Common.Type != ACPI_TYPE_INTEGER)
    {
        FUNC3 ((AE_INFO, Info->FullPathname, Info->NodeFlags,
            "Return Package has invalid object type for version number"));
        FUNC5 (AE_AML_OPERAND_TYPE);
    }

    Version = (UINT32) (*Elements)->Integer.Value;
    ExpectedCount = 21;         /* Version 1 */

    if (Version == 0)
    {
        ExpectedCount = 20;     /* Version 0 */
    }

    if (Count < ExpectedCount)
    {
        FUNC3 ((AE_INFO, Info->FullPathname, Info->NodeFlags,
            "Return Package is too small - found %u elements, expected %u",
            Count, ExpectedCount));
        FUNC5 (AE_AML_OPERAND_VALUE);
    }
    else if (Count > ExpectedCount)
    {
        FUNC0 ((ACPI_DB_REPAIR,
            "%s: Return Package is larger than needed - "
            "found %u, expected %u\n",
            Info->FullPathname, Count, ExpectedCount));
    }

    /* Validate all elements of the returned package */

    Status = FUNC4 (Info, Elements,
        ACPI_RTYPE_INTEGER, 16,
        ACPI_RTYPE_STRING, 4, 0);
    if (FUNC1 (Status))
    {
        FUNC5 (Status);
    }

    /* Version 1 has a single trailing integer */

    if (Version > 0)
    {
        Status = FUNC4 (Info, Elements + 20,
            ACPI_RTYPE_INTEGER, 1, 0, 0, 20);
    }

    FUNC5 (Status);
}