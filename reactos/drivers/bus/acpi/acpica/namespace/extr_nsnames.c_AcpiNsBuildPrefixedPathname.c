
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ Node; } ;
struct TYPE_5__ {TYPE_1__ Scope; } ;
typedef scalar_t__ SIZE_T ;
typedef int ACPI_STATUS ;
typedef TYPE_2__ ACPI_GENERIC_STATE ;


 char* ACPI_ALLOCATE_ZEROED (scalar_t__) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FREE (char*) ;
 int ACPI_UINT32_MAX ;
 int AcpiNsExternalizeName (int ,char const*,int *,char**) ;
 char* AcpiNsGetNormalizedPathname (scalar_t__,int ) ;
 int AcpiNsNormalizePathname (char*) ;
 int TRUE ;
 int strcat (char*,char*) ;
 scalar_t__ strlen (char*) ;

char *
AcpiNsBuildPrefixedPathname (
    ACPI_GENERIC_STATE *PrefixScope,
    const char *InternalPath)
{
    ACPI_STATUS Status;
    char *FullPath = ((void*)0);
    char *ExternalPath = ((void*)0);
    char *PrefixPath = ((void*)0);
    SIZE_T PrefixPathLength = 0;




    if (PrefixScope && PrefixScope->Scope.Node)
    {
        PrefixPath = AcpiNsGetNormalizedPathname (PrefixScope->Scope.Node, TRUE);
        if (PrefixPath)
        {
            PrefixPathLength = strlen (PrefixPath);
        }
    }

    Status = AcpiNsExternalizeName (ACPI_UINT32_MAX, InternalPath,
        ((void*)0), &ExternalPath);
    if (ACPI_FAILURE (Status))
    {
        goto Cleanup;
    }



    FullPath = ACPI_ALLOCATE_ZEROED (
        PrefixPathLength + strlen (ExternalPath) + 2);
    if (!FullPath)
    {
        goto Cleanup;
    }



    if (PrefixPath &&
        (*ExternalPath != '\\') &&
        (*ExternalPath != '^'))
    {
        strcat (FullPath, PrefixPath);
        if (PrefixPath[1])
        {
            strcat (FullPath, ".");
        }
    }

    AcpiNsNormalizePathname (ExternalPath);
    strcat (FullPath, ExternalPath);

Cleanup:
    if (PrefixPath)
    {
        ACPI_FREE (PrefixPath);
    }
    if (ExternalPath)
    {
        ACPI_FREE (ExternalPath);
    }

    return (FullPath);
}
