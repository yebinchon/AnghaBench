
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int Ascii; } ;
struct TYPE_9__ {TYPE_1__ Name; } ;
struct TYPE_8__ {int Name; scalar_t__ RepairFunction; } ;
typedef TYPE_2__ ACPI_REPAIR_INFO ;
typedef TYPE_3__ ACPI_NAMESPACE_NODE ;


 scalar_t__ ACPI_COMPARE_NAMESEG (int ,int ) ;
 TYPE_2__* AcpiNsRepairableNames ;

__attribute__((used)) static const ACPI_REPAIR_INFO *
AcpiNsMatchComplexRepair (
    ACPI_NAMESPACE_NODE *Node)
{
    const ACPI_REPAIR_INFO *ThisName;




    ThisName = AcpiNsRepairableNames;
    while (ThisName->RepairFunction)
    {
        if (ACPI_COMPARE_NAMESEG (Node->Name.Ascii, ThisName->Name))
        {
            return (ThisName);
        }

        ThisName++;
    }

    return (((void*)0));
}
