
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t ULONG ;
struct TYPE_6__ {size_t ReportIDsLength; TYPE_1__* ReportIDs; } ;
struct TYPE_5__ {size_t CollectionNumber; } ;
typedef TYPE_1__* PHIDP_REPORT_IDS ;
typedef TYPE_2__* PHIDP_DEVICE_DESC ;


 int ASSERT (int ) ;
 int DPRINT1 (char*,size_t) ;
 int FALSE ;

PHIDP_REPORT_IDS
HidClassPDO_GetReportDescription(
    PHIDP_DEVICE_DESC DeviceDescription,
    ULONG CollectionNumber)
{
    ULONG Index;

    for (Index = 0; Index < DeviceDescription->ReportIDsLength; Index++)
    {
        if (DeviceDescription->ReportIDs[Index].CollectionNumber == CollectionNumber)
        {



            return &DeviceDescription->ReportIDs[Index];
        }
    }




    DPRINT1("[HIDCLASS] GetReportDescription CollectionNumber %x not found\n", CollectionNumber);
    ASSERT(FALSE);
    return ((void*)0);
}
