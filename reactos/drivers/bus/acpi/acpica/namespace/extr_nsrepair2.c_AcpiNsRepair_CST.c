
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_13__ {int NodeFlags; int FullPathname; } ;
struct TYPE_11__ {int Value; } ;
struct TYPE_10__ {int Count; TYPE_3__** Elements; } ;
struct TYPE_12__ {TYPE_2__ Integer; TYPE_1__ Package; } ;
typedef scalar_t__ BOOLEAN ;
typedef int ACPI_STATUS ;
typedef TYPE_3__ ACPI_OPERAND_OBJECT ;
typedef TYPE_4__ ACPI_EVALUATE_INFO ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_NAME (int ) ;
 int ACPI_SORT_ASCENDING ;
 int ACPI_WARN_PREDEFINED (int ) ;
 int AE_INFO ;
 int AE_OK ;
 int AcpiNsCheckSortedList (TYPE_4__*,TYPE_3__*,int,int,int,int ,char*) ;
 int AcpiNsRemoveElement (TYPE_3__*,int) ;
 scalar_t__ FALSE ;
 int NsRepair_CST ;
 scalar_t__ TRUE ;

__attribute__((used)) static ACPI_STATUS
AcpiNsRepair_CST (
    ACPI_EVALUATE_INFO *Info,
    ACPI_OPERAND_OBJECT **ReturnObjectPtr)
{
    ACPI_OPERAND_OBJECT *ReturnObject = *ReturnObjectPtr;
    ACPI_OPERAND_OBJECT **OuterElements;
    UINT32 OuterElementCount;
    ACPI_OPERAND_OBJECT *ObjDesc;
    ACPI_STATUS Status;
    BOOLEAN Removing;
    UINT32 i;


    ACPI_FUNCTION_NAME (NsRepair_CST);





    OuterElementCount = ReturnObject->Package.Count - 1;
    i = 0;
    while (i < OuterElementCount)
    {
        OuterElements = &ReturnObject->Package.Elements[i + 1];
        Removing = FALSE;

        if ((*OuterElements)->Package.Count == 0)
        {
            ACPI_WARN_PREDEFINED ((AE_INFO,
                Info->FullPathname, Info->NodeFlags,
                "SubPackage[%u] - removing entry due to zero count", i));
            Removing = TRUE;
            goto RemoveElement;
        }

        ObjDesc = (*OuterElements)->Package.Elements[1];
        if ((UINT32) ObjDesc->Integer.Value == 0)
        {
            ACPI_WARN_PREDEFINED ((AE_INFO,
                Info->FullPathname, Info->NodeFlags,
                "SubPackage[%u] - removing entry due to invalid Type(0)", i));
            Removing = TRUE;
        }

RemoveElement:
        if (Removing)
        {
            AcpiNsRemoveElement (ReturnObject, i + 1);
            OuterElementCount--;
        }
        else
        {
            i++;
        }
    }



    ObjDesc = ReturnObject->Package.Elements[0];
    ObjDesc->Integer.Value = OuterElementCount;





    Status = AcpiNsCheckSortedList (Info, ReturnObject, 1, 4, 1,
        ACPI_SORT_ASCENDING, "C-State Type");
    if (ACPI_FAILURE (Status))
    {
        return (Status);
    }

    return (AE_OK);
}
