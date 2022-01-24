#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ Node; } ;
struct TYPE_5__ {TYPE_1__ Scope; } ;
typedef  scalar_t__ SIZE_T ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_2__ ACPI_GENERIC_STATE ;

/* Variables and functions */
 char* FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  ACPI_UINT32_MAX ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,char**) ; 
 char* FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 scalar_t__ FUNC7 (char*) ; 

char *
FUNC8 (
    ACPI_GENERIC_STATE      *PrefixScope,
    const char              *InternalPath)
{
    ACPI_STATUS             Status;
    char                    *FullPath = NULL;
    char                    *ExternalPath = NULL;
    char                    *PrefixPath = NULL;
    SIZE_T                  PrefixPathLength = 0;


    /* If there is a prefix, get the pathname to it */

    if (PrefixScope && PrefixScope->Scope.Node)
    {
        PrefixPath = FUNC4 (PrefixScope->Scope.Node, TRUE);
        if (PrefixPath)
        {
            PrefixPathLength = FUNC7 (PrefixPath);
        }
    }

    Status = FUNC3 (ACPI_UINT32_MAX, InternalPath,
        NULL, &ExternalPath);
    if (FUNC1 (Status))
    {
        goto Cleanup;
    }

    /* Merge the prefix path and the path. 2 is for one dot and trailing null */

    FullPath = FUNC0 (
        PrefixPathLength + FUNC7 (ExternalPath) + 2);
    if (!FullPath)
    {
        goto Cleanup;
    }

    /* Don't merge if the External path is already fully qualified */

    if (PrefixPath &&
        (*ExternalPath != '\\') &&
        (*ExternalPath != '^'))
    {
        FUNC6 (FullPath, PrefixPath);
        if (PrefixPath[1])
        {
            FUNC6 (FullPath, ".");
        }
    }

    FUNC5 (ExternalPath);
    FUNC6 (FullPath, ExternalPath);

Cleanup:
    if (PrefixPath)
    {
        FUNC2 (PrefixPath);
    }
    if (ExternalPath)
    {
        FUNC2 (ExternalPath);
    }

    return (FullPath);
}