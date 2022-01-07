
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t ULONG ;
typedef scalar_t__ UCHAR ;
struct TYPE_6__ {size_t ReportIDsLength; TYPE_1__* ReportIDs; } ;
struct TYPE_5__ {scalar_t__ ReportID; } ;
typedef TYPE_1__* PHIDP_REPORT_IDS ;
typedef TYPE_2__* PHIDP_DEVICE_DESC ;


 int ASSERT (int ) ;
 int DPRINT1 (char*,scalar_t__) ;
 int FALSE ;

PHIDP_REPORT_IDS
HidClassPDO_GetReportDescriptionByReportID(
    PHIDP_DEVICE_DESC DeviceDescription,
    UCHAR ReportID)
{
    ULONG Index;

    for (Index = 0; Index < DeviceDescription->ReportIDsLength; Index++)
    {
        if (DeviceDescription->ReportIDs[Index].ReportID == ReportID)
        {



            return &DeviceDescription->ReportIDs[Index];
        }
    }




    DPRINT1("[HIDCLASS] GetReportDescriptionByReportID ReportID %x not found\n", ReportID);
    ASSERT(FALSE);
    return ((void*)0);
}
