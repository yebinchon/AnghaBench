
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int ReturnFlags; int FullPathname; } ;
struct TYPE_9__ {TYPE_2__** Elements; } ;
struct TYPE_10__ {TYPE_1__ Package; } ;
typedef int ACPI_STATUS ;
typedef TYPE_2__ ACPI_OPERAND_OBJECT ;
typedef TYPE_3__ ACPI_EVALUATE_INFO ;


 int ACPI_DB_REPAIR ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FUNCTION_NAME (int ) ;
 int ACPI_OBJECT_REPAIRED ;
 int ACPI_OBJECT_WRAPPED ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 TYPE_2__* AcpiUtCreatePackageObject (int) ;
 int AcpiUtGetObjectTypeName (TYPE_2__*) ;
 int NsWrapWithPackage ;

ACPI_STATUS
AcpiNsWrapWithPackage (
    ACPI_EVALUATE_INFO *Info,
    ACPI_OPERAND_OBJECT *OriginalObject,
    ACPI_OPERAND_OBJECT **ObjDescPtr)
{
    ACPI_OPERAND_OBJECT *PkgObjDesc;


    ACPI_FUNCTION_NAME (NsWrapWithPackage);






    PkgObjDesc = AcpiUtCreatePackageObject (1);
    if (!PkgObjDesc)
    {
        return (AE_NO_MEMORY);
    }

    PkgObjDesc->Package.Elements[0] = OriginalObject;

    ACPI_DEBUG_PRINT ((ACPI_DB_REPAIR,
        "%s: Wrapped %s with expected Package object\n",
        Info->FullPathname, AcpiUtGetObjectTypeName (OriginalObject)));



    *ObjDescPtr = PkgObjDesc;
    Info->ReturnFlags |= ACPI_OBJECT_REPAIRED | ACPI_OBJECT_WRAPPED;
    return (AE_OK);
}
