
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t UINT32 ;
struct TYPE_9__ {int * Tables; } ;
struct TYPE_8__ {int Revision; } ;
struct TYPE_7__ {TYPE_2__* Pointer; int Address; int Flags; } ;
typedef scalar_t__ BOOLEAN ;
typedef TYPE_1__ ACPI_TABLE_DESC ;
typedef int ACPI_STATUS ;


 scalar_t__ ACPI_FAILURE (int ) ;
 size_t AcpiGbl_DsdtIndex ;
 TYPE_6__ AcpiGbl_RootTableList ;
 int AcpiTbGetNextTableDescriptor (size_t*,int *) ;
 int AcpiTbInitTableDescriptor (int *,int ,int ,TYPE_2__*) ;
 int AcpiTbOverrideTable (TYPE_1__*) ;
 int AcpiTbPrintTableHeader (int ,TYPE_2__*) ;
 int AcpiUtSetIntegerWidth (int ) ;

void
AcpiTbInstallTableWithOverride (
    ACPI_TABLE_DESC *NewTableDesc,
    BOOLEAN Override,
    UINT32 *TableIndex)
{
    UINT32 i;
    ACPI_STATUS Status;


    Status = AcpiTbGetNextTableDescriptor (&i, ((void*)0));
    if (ACPI_FAILURE (Status))
    {
        return;
    }
    if (Override)
    {
        AcpiTbOverrideTable (NewTableDesc);
    }

    AcpiTbInitTableDescriptor (&AcpiGbl_RootTableList.Tables[i],
        NewTableDesc->Address, NewTableDesc->Flags, NewTableDesc->Pointer);

    AcpiTbPrintTableHeader (NewTableDesc->Address, NewTableDesc->Pointer);



    *TableIndex = i;



    if (i == AcpiGbl_DsdtIndex)
    {
        AcpiUtSetIntegerWidth (NewTableDesc->Pointer->Revision);
    }
}
