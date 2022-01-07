
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* RepairFunction ) (int *,int **) ;} ;
typedef int ACPI_STATUS ;
typedef TYPE_1__ ACPI_REPAIR_INFO ;
typedef int ACPI_OPERAND_OBJECT ;
typedef int ACPI_NAMESPACE_NODE ;
typedef int ACPI_EVALUATE_INFO ;


 TYPE_1__* AcpiNsMatchComplexRepair (int *) ;
 int stub1 (int *,int **) ;

ACPI_STATUS
AcpiNsComplexRepairs (
    ACPI_EVALUATE_INFO *Info,
    ACPI_NAMESPACE_NODE *Node,
    ACPI_STATUS ValidateStatus,
    ACPI_OPERAND_OBJECT **ReturnObjectPtr)
{
    const ACPI_REPAIR_INFO *Predefined;
    ACPI_STATUS Status;




    Predefined = AcpiNsMatchComplexRepair (Node);
    if (!Predefined)
    {
        return (ValidateStatus);
    }

    Status = Predefined->RepairFunction (Info, ReturnObjectPtr);
    return (Status);
}
