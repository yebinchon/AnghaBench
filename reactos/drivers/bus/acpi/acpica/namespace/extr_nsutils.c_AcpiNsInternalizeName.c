
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* ExternalName; char* InternalName; int Length; } ;
typedef int ACPI_STATUS ;
typedef TYPE_1__ ACPI_NAMESTRING_INFO ;


 char* ACPI_ALLOCATE_ZEROED (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FREE (char*) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int AE_BAD_PARAMETER ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int AcpiNsBuildInternalName (TYPE_1__*) ;
 int AcpiNsGetInternalNameLength (TYPE_1__*) ;
 int NsInternalizeName ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiNsInternalizeName (
    const char *ExternalName,
    char **ConvertedName)
{
    char *InternalName;
    ACPI_NAMESTRING_INFO Info;
    ACPI_STATUS Status;


    ACPI_FUNCTION_TRACE (NsInternalizeName);


    if ((!ExternalName) ||
        (*ExternalName == 0) ||
        (!ConvertedName))
    {
        return_ACPI_STATUS (AE_BAD_PARAMETER);
    }



    Info.ExternalName = ExternalName;
    AcpiNsGetInternalNameLength (&Info);



    InternalName = ACPI_ALLOCATE_ZEROED (Info.Length);
    if (!InternalName)
    {
        return_ACPI_STATUS (AE_NO_MEMORY);
    }



    Info.InternalName = InternalName;
    Status = AcpiNsBuildInternalName (&Info);
    if (ACPI_FAILURE (Status))
    {
        ACPI_FREE (InternalName);
        return_ACPI_STATUS (Status);
    }

    *ConvertedName = InternalName;
    return_ACPI_STATUS (AE_OK);
}
