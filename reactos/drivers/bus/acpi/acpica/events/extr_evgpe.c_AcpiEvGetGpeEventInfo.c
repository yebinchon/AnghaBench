
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT32 ;
struct TYPE_4__ {int GpeBlock; } ;
struct TYPE_5__ {TYPE_1__ Device; } ;
typedef TYPE_2__ ACPI_OPERAND_OBJECT ;
typedef int ACPI_NAMESPACE_NODE ;
typedef scalar_t__ ACPI_HANDLE ;
typedef int ACPI_GPE_EVENT_INFO ;


 int ACPI_FUNCTION_ENTRY () ;
 size_t ACPI_MAX_GPE_BLOCKS ;
 int * AcpiEvLowGetGpeInfo (size_t,int ) ;
 int * AcpiGbl_GpeFadtBlocks ;
 TYPE_2__* AcpiNsGetAttachedObject (int *) ;

ACPI_GPE_EVENT_INFO *
AcpiEvGetGpeEventInfo (
    ACPI_HANDLE GpeDevice,
    UINT32 GpeNumber)
{
    ACPI_OPERAND_OBJECT *ObjDesc;
    ACPI_GPE_EVENT_INFO *GpeInfo;
    UINT32 i;


    ACPI_FUNCTION_ENTRY ();




    if (!GpeDevice)
    {


        for (i = 0; i < ACPI_MAX_GPE_BLOCKS; i++)
        {
            GpeInfo = AcpiEvLowGetGpeInfo (GpeNumber,
                AcpiGbl_GpeFadtBlocks[i]);
            if (GpeInfo)
            {
                return (GpeInfo);
            }
        }



        return (((void*)0));
    }



    ObjDesc = AcpiNsGetAttachedObject ((ACPI_NAMESPACE_NODE *) GpeDevice);
    if (!ObjDesc ||
        !ObjDesc->Device.GpeBlock)
    {
        return (((void*)0));
    }

    return (AcpiEvLowGetGpeInfo (GpeNumber, ObjDesc->Device.GpeBlock));
}
