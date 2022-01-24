#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char const* ExternalName; char* InternalName; int /*<<< orphan*/  Length; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_1__ ACPI_NAMESTRING_INFO ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  NsInternalizeName ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC7 (
    const char              *ExternalName,
    char                    **ConvertedName)
{
    char                    *InternalName;
    ACPI_NAMESTRING_INFO    Info;
    ACPI_STATUS             Status;


    FUNC3 (NsInternalizeName);


    if ((!ExternalName)      ||
        (*ExternalName == 0) ||
        (!ConvertedName))
    {
        FUNC6 (AE_BAD_PARAMETER);
    }

    /* Get the length of the new internal name */

    Info.ExternalName = ExternalName;
    FUNC5 (&Info);

    /* We need a segment to store the internal  name */

    InternalName = FUNC0 (Info.Length);
    if (!InternalName)
    {
        FUNC6 (AE_NO_MEMORY);
    }

    /* Build the name */

    Info.InternalName = InternalName;
    Status = FUNC4 (&Info);
    if (FUNC1 (Status))
    {
        FUNC2 (InternalName);
        FUNC6 (Status);
    }

    *ConvertedName = InternalName;
    FUNC6 (AE_OK);
}