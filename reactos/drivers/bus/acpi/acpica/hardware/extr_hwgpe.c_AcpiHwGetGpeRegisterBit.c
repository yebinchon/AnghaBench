
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_5__ {int GpeNumber; TYPE_1__* RegisterInfo; } ;
struct TYPE_4__ {int BaseGpeNumber; } ;
typedef TYPE_2__ ACPI_GPE_EVENT_INFO ;



UINT32
AcpiHwGetGpeRegisterBit (
    ACPI_GPE_EVENT_INFO *GpeEventInfo)
{

    return ((UINT32) 1 <<
        (GpeEventInfo->GpeNumber - GpeEventInfo->RegisterInfo->BaseGpeNumber));
}
