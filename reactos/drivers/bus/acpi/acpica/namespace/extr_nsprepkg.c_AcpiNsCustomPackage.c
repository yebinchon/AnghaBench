
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ UINT32 ;
struct TYPE_12__ {int FullPathname; int NodeFlags; } ;
struct TYPE_10__ {scalar_t__ Value; } ;
struct TYPE_9__ {scalar_t__ Type; } ;
struct TYPE_11__ {TYPE_2__ Integer; TYPE_1__ Common; } ;
typedef int ACPI_STATUS ;
typedef TYPE_3__ ACPI_OPERAND_OBJECT ;
typedef TYPE_4__ ACPI_EVALUATE_INFO ;


 int ACPI_DB_REPAIR ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_NAME (int ) ;
 int ACPI_RTYPE_INTEGER ;
 int ACPI_RTYPE_STRING ;
 scalar_t__ ACPI_TYPE_INTEGER ;
 int ACPI_WARN_PREDEFINED (int ) ;
 int AE_AML_OPERAND_TYPE ;
 int AE_AML_OPERAND_VALUE ;
 int AE_INFO ;
 int AE_OK ;
 int AcpiNsCheckPackageElements (TYPE_4__*,TYPE_3__**,int ,int,int ,int,int) ;
 int NsCustomPackage ;
 int return_ACPI_STATUS (int ) ;

__attribute__((used)) static ACPI_STATUS
AcpiNsCustomPackage (
    ACPI_EVALUATE_INFO *Info,
    ACPI_OPERAND_OBJECT **Elements,
    UINT32 Count)
{
    UINT32 ExpectedCount;
    UINT32 Version;
    ACPI_STATUS Status = AE_OK;


    ACPI_FUNCTION_NAME (NsCustomPackage);




    if ((*Elements)->Common.Type != ACPI_TYPE_INTEGER)
    {
        ACPI_WARN_PREDEFINED ((AE_INFO, Info->FullPathname, Info->NodeFlags,
            "Return Package has invalid object type for version number"));
        return_ACPI_STATUS (AE_AML_OPERAND_TYPE);
    }

    Version = (UINT32) (*Elements)->Integer.Value;
    ExpectedCount = 21;

    if (Version == 0)
    {
        ExpectedCount = 20;
    }

    if (Count < ExpectedCount)
    {
        ACPI_WARN_PREDEFINED ((AE_INFO, Info->FullPathname, Info->NodeFlags,
            "Return Package is too small - found %u elements, expected %u",
            Count, ExpectedCount));
        return_ACPI_STATUS (AE_AML_OPERAND_VALUE);
    }
    else if (Count > ExpectedCount)
    {
        ACPI_DEBUG_PRINT ((ACPI_DB_REPAIR,
            "%s: Return Package is larger than needed - "
            "found %u, expected %u\n",
            Info->FullPathname, Count, ExpectedCount));
    }



    Status = AcpiNsCheckPackageElements (Info, Elements,
        ACPI_RTYPE_INTEGER, 16,
        ACPI_RTYPE_STRING, 4, 0);
    if (ACPI_FAILURE (Status))
    {
        return_ACPI_STATUS (Status);
    }



    if (Version > 0)
    {
        Status = AcpiNsCheckPackageElements (Info, Elements + 20,
            ACPI_RTYPE_INTEGER, 1, 0, 0, 20);
    }

    return_ACPI_STATUS (Status);
}
