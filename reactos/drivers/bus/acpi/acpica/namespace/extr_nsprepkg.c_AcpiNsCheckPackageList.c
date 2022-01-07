
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef scalar_t__ UINT32 ;
struct TYPE_21__ {int NodeFlags; int FullPathname; TYPE_6__* ParentPackage; } ;
struct TYPE_18__ {scalar_t__ Count; TYPE_6__** Elements; } ;
struct TYPE_16__ {scalar_t__ Value; } ;
struct TYPE_20__ {TYPE_4__ Package; TYPE_2__ Integer; } ;
struct TYPE_17__ {int Type; scalar_t__ Count1; scalar_t__ Count2; int ObjectType1; int ObjectType2; } ;
struct TYPE_15__ {scalar_t__ Count; int * ObjectType; } ;
struct TYPE_19__ {TYPE_3__ RetInfo; TYPE_1__ RetInfo2; } ;
typedef int ACPI_STATUS ;
typedef TYPE_5__ ACPI_PREDEFINED_INFO ;
typedef TYPE_6__ ACPI_OPERAND_OBJECT ;
typedef TYPE_7__ ACPI_EVALUATE_INFO ;


 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_RTYPE_INTEGER ;
 int ACPI_RTYPE_PACKAGE ;
 int ACPI_WARN_PREDEFINED (int ) ;
 int AE_AML_INTERNAL ;
 int AE_AML_OPERAND_VALUE ;
 int AE_INFO ;
 int AE_OK ;
 int AcpiNsCheckObjectType (TYPE_7__*,TYPE_6__**,int ,scalar_t__) ;
 int AcpiNsCheckPackageElements (TYPE_7__*,TYPE_6__**,int ,scalar_t__,int ,scalar_t__,int) ;

__attribute__((used)) static ACPI_STATUS
AcpiNsCheckPackageList (
    ACPI_EVALUATE_INFO *Info,
    const ACPI_PREDEFINED_INFO *Package,
    ACPI_OPERAND_OBJECT **Elements,
    UINT32 Count)
{
    ACPI_OPERAND_OBJECT *SubPackage;
    ACPI_OPERAND_OBJECT **SubElements;
    ACPI_STATUS Status;
    UINT32 ExpectedCount;
    UINT32 i;
    UINT32 j;
    for (i = 0; i < Count; i++)
    {
        SubPackage = *Elements;
        SubElements = SubPackage->Package.Elements;
        Info->ParentPackage = SubPackage;



        Status = AcpiNsCheckObjectType (Info, &SubPackage,
            ACPI_RTYPE_PACKAGE, i);
        if (ACPI_FAILURE (Status))
        {
            return (Status);
        }



        Info->ParentPackage = SubPackage;
        switch (Package->RetInfo.Type)
        {
        case 135:
        case 130:
        case 129:



            ExpectedCount = Package->RetInfo.Count1 + Package->RetInfo.Count2;
            if (SubPackage->Package.Count < ExpectedCount)
            {
                goto PackageTooSmall;
            }

            Status = AcpiNsCheckPackageElements (Info, SubElements,
                Package->RetInfo.ObjectType1,
                Package->RetInfo.Count1,
                Package->RetInfo.ObjectType2,
                Package->RetInfo.Count2, 0);
            if (ACPI_FAILURE (Status))
            {
                return (Status);
            }
            break;

        case 132:




            ExpectedCount = Package->RetInfo.Count1 + Package->RetInfo.Count2;
            if (SubPackage->Package.Count < ExpectedCount)
            {
                goto PackageTooSmall;
            }

            Status = AcpiNsCheckPackageElements (Info, SubElements,
                Package->RetInfo.ObjectType1,
                Package->RetInfo.Count1,
                Package->RetInfo.ObjectType2,
                SubPackage->Package.Count - Package->RetInfo.Count1, 0);
            if (ACPI_FAILURE (Status))
            {
                return (Status);
            }
            break;

        case 128:



            break;

        case 133:



            ExpectedCount = Package->RetInfo2.Count;
            if (SubPackage->Package.Count < ExpectedCount)
            {
                goto PackageTooSmall;
            }



            for (j = 0; j < ExpectedCount; j++)
            {
                Status = AcpiNsCheckObjectType (Info, &SubElements[j],
                    Package->RetInfo2.ObjectType[j], j);
                if (ACPI_FAILURE (Status))
                {
                    return (Status);
                }
            }
            break;

        case 131:



            ExpectedCount = Package->RetInfo.Count1;
            if (SubPackage->Package.Count < ExpectedCount)
            {
                goto PackageTooSmall;
            }



            Status = AcpiNsCheckPackageElements (Info, SubElements,
                Package->RetInfo.ObjectType1,
                SubPackage->Package.Count, 0, 0, 0);
            if (ACPI_FAILURE (Status))
            {
                return (Status);
            }
            break;

        case 134:




            Status = AcpiNsCheckObjectType (Info, SubElements,
                ACPI_RTYPE_INTEGER, 0);
            if (ACPI_FAILURE (Status))
            {
                return (Status);
            }





            ExpectedCount = (UINT32) (*SubElements)->Integer.Value;
            if (SubPackage->Package.Count < ExpectedCount)
            {
                goto PackageTooSmall;
            }

            if (SubPackage->Package.Count < Package->RetInfo.Count1)
            {
                ExpectedCount = Package->RetInfo.Count1;
                goto PackageTooSmall;
            }

            if (ExpectedCount == 0)
            {






                ExpectedCount = SubPackage->Package.Count;
                (*SubElements)->Integer.Value = ExpectedCount;
            }



            Status = AcpiNsCheckPackageElements (Info, (SubElements + 1),
                Package->RetInfo.ObjectType1,
                (ExpectedCount - 1), 0, 0, 1);
            if (ACPI_FAILURE (Status))
            {
                return (Status);
            }
            break;

        default:

            ACPI_ERROR ((AE_INFO, "Invalid Package type: %X",
                Package->RetInfo.Type));
            return (AE_AML_INTERNAL);
        }

        Elements++;
    }

    return (AE_OK);


PackageTooSmall:



    ACPI_WARN_PREDEFINED ((AE_INFO, Info->FullPathname, Info->NodeFlags,
        "Return SubPackage[%u] is too small - found %u elements, expected %u",
        i, SubPackage->Package.Count, ExpectedCount));

    return (AE_AML_OPERAND_VALUE);
}
