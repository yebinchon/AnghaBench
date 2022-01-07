
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_22__ {int ReturnFlags; TYPE_4__* ParentPackage; TYPE_3__* Predefined; } ;
struct TYPE_21__ {int Flags; } ;
struct TYPE_18__ {scalar_t__ Type; } ;
struct TYPE_20__ {TYPE_2__ Common; } ;
struct TYPE_17__ {scalar_t__ ExpectedBtypes; } ;
struct TYPE_19__ {TYPE_1__ Info; } ;
typedef scalar_t__ ACPI_STATUS ;
typedef TYPE_3__ ACPI_PREDEFINED_INFO ;
typedef TYPE_4__ ACPI_OPERAND_OBJECT ;
typedef TYPE_5__ ACPI_NAMESPACE_NODE ;
typedef TYPE_6__ ACPI_EVALUATE_INFO ;


 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 int ACPI_NOT_PACKAGE_ELEMENT ;
 int ACPI_OBJECT_REPAIRED ;
 scalar_t__ ACPI_RTYPE_ALL ;
 scalar_t__ ACPI_TYPE_PACKAGE ;
 scalar_t__ AE_AML_OPERAND_TYPE ;
 scalar_t__ AE_AML_OPERAND_VALUE ;
 scalar_t__ AE_CTRL_RETURN_VALUE ;
 scalar_t__ AE_OK ;
 int ANOBJ_EVALUATED ;
 scalar_t__ AcpiGbl_DisableAutoRepair ;
 scalar_t__ AcpiNsCheckObjectType (TYPE_6__*,TYPE_4__**,scalar_t__,int ) ;
 scalar_t__ AcpiNsCheckPackage (TYPE_6__*,TYPE_4__**) ;
 scalar_t__ AcpiNsComplexRepairs (TYPE_6__*,TYPE_5__*,scalar_t__,TYPE_4__**) ;

ACPI_STATUS
AcpiNsCheckReturnValue (
    ACPI_NAMESPACE_NODE *Node,
    ACPI_EVALUATE_INFO *Info,
    UINT32 UserParamCount,
    ACPI_STATUS ReturnStatus,
    ACPI_OPERAND_OBJECT **ReturnObjectPtr)
{
    ACPI_STATUS Status;
    const ACPI_PREDEFINED_INFO *Predefined;




    Predefined = Info->Predefined;
    if (!Predefined)
    {
        return (AE_OK);
    }





    if ((ReturnStatus != AE_OK) &&
        (ReturnStatus != AE_CTRL_RETURN_VALUE))
    {
        return (AE_OK);
    }
    if (AcpiGbl_DisableAutoRepair ||
        (!Predefined->Info.ExpectedBtypes) ||
        (Predefined->Info.ExpectedBtypes == ACPI_RTYPE_ALL))
    {
        return (AE_OK);
    }





    Status = AcpiNsCheckObjectType (Info, ReturnObjectPtr,
        Predefined->Info.ExpectedBtypes, ACPI_NOT_PACKAGE_ELEMENT);
    if (ACPI_FAILURE (Status))
    {
        goto Exit;
    }






    if (!(*ReturnObjectPtr))
    {
        goto Exit;
    }





    if ((*ReturnObjectPtr)->Common.Type == ACPI_TYPE_PACKAGE)
    {
        Info->ParentPackage = *ReturnObjectPtr;
        Status = AcpiNsCheckPackage (Info, ReturnObjectPtr);
        if (ACPI_FAILURE (Status))
        {


            if ((Status != AE_AML_OPERAND_TYPE) &&
                (Status != AE_AML_OPERAND_VALUE))
            {
                goto Exit;
            }
        }
    }
    Status = AcpiNsComplexRepairs (Info, Node, Status, ReturnObjectPtr);

Exit:





    if (ACPI_FAILURE (Status) ||
       (Info->ReturnFlags & ACPI_OBJECT_REPAIRED))
    {
        Node->Flags |= ANOBJ_EVALUATED;
    }

    return (Status);
}
