#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t ULONG ;
struct TYPE_6__ {size_t ReportIDsLength; TYPE_1__* ReportIDs; } ;
struct TYPE_5__ {size_t CollectionNumber; } ;
typedef  TYPE_1__* PHIDP_REPORT_IDS ;
typedef  TYPE_2__* PHIDP_DEVICE_DESC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t) ; 
 int /*<<< orphan*/  FALSE ; 

PHIDP_REPORT_IDS
FUNC2(
    PHIDP_DEVICE_DESC DeviceDescription,
    ULONG CollectionNumber)
{
    ULONG Index;

    for (Index = 0; Index < DeviceDescription->ReportIDsLength; Index++)
    {
        if (DeviceDescription->ReportIDs[Index].CollectionNumber == CollectionNumber)
        {
            //
            // found collection
            //
            return &DeviceDescription->ReportIDs[Index];
        }
    }

    //
    // failed to find collection
    //
    FUNC1("[HIDCLASS] GetReportDescription CollectionNumber %x not found\n", CollectionNumber);
    FUNC0(FALSE);
    return NULL;
}