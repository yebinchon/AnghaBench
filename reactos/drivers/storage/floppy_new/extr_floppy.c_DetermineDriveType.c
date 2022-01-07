
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int USHORT ;
typedef scalar_t__ ULONG ;
typedef scalar_t__ UCHAR ;
struct TYPE_17__ {scalar_t__ NumberOfHeads; int MaximumTrack; scalar_t__ SectorsPerTrack; } ;
struct TYPE_16__ {size_t HighestDriveMediaType; } ;
struct TYPE_15__ {TYPE_3__* DeviceExtension; } ;
struct TYPE_14__ {scalar_t__ DriveType; } ;
struct TYPE_11__ {int DriverData; } ;
struct TYPE_13__ {TYPE_1__ CommonExtension; } ;
struct TYPE_12__ {scalar_t__ PageLength; scalar_t__ NumberOfHeads; int* NumberOfCylinders; scalar_t__ SectorsPerTrack; } ;
typedef int * PVOID ;
typedef TYPE_2__* PMODE_FLEXIBLE_DISK_PAGE ;
typedef TYPE_3__* PFUNCTIONAL_DEVICE_EXTENSION ;
typedef TYPE_4__* PDISK_DATA ;
typedef TYPE_5__* PDEVICE_OBJECT ;
typedef int MODE_PARAMETER_HEADER ;
typedef size_t LONG ;
typedef int BOOLEAN ;


 TYPE_2__* ClassFindModePage (int *,scalar_t__,int ,int ) ;
 scalar_t__ ClassModeSense (TYPE_5__*,int *,int ,int ) ;
 scalar_t__ DRIVE_TYPE_NONE ;
 TYPE_7__* DriveMediaConstants ;
 TYPE_6__* DriveMediaLimits ;
 int * ExAllocatePool (int ,int ) ;
 int ExFreePool (int *) ;
 int FALSE ;
 int MODE_DATA_SIZE ;
 int MODE_FLEXIBLE_DISK_PAGE ;
 int MODE_PAGE_FLEXIBILE ;
 size_t NUMBER_OF_DRIVE_MEDIA_COMBINATIONS ;
 scalar_t__ NUMBER_OF_DRIVE_TYPES ;
 int NonPagedPoolCacheAligned ;
 int NonPagedPoolNxCacheAligned ;
 int PAGED_CODE () ;
 int RtlZeroMemory (int *,int ) ;
 int StartWritePrecom ;
 int TRUE ;
 scalar_t__ offsetof (int ,int ) ;

ULONG
DetermineDriveType(
    PDEVICE_OBJECT DeviceObject
    )
{
    PFUNCTIONAL_DEVICE_EXTENSION fdoExtension = DeviceObject->DeviceExtension;
    PVOID modeData;
    PDISK_DATA diskData = (PDISK_DATA) fdoExtension->CommonExtension.DriverData;
    PMODE_FLEXIBLE_DISK_PAGE pageData;
    ULONG length;
    LONG index;
    UCHAR numberOfHeads;
    UCHAR sectorsPerTrack;
    USHORT maximumTrack;
    BOOLEAN applyFix = FALSE;

    PAGED_CODE();

    if (diskData->DriveType != DRIVE_TYPE_NONE) {
        return(diskData->DriveType);
    }


    modeData = ExAllocatePool(NonPagedPoolNxCacheAligned, MODE_DATA_SIZE);




    if (modeData == ((void*)0)) {
        return(DRIVE_TYPE_NONE);
    }

    RtlZeroMemory(modeData, MODE_DATA_SIZE);

    length = ClassModeSense(DeviceObject,
                            modeData,
                            MODE_DATA_SIZE,
                            MODE_PAGE_FLEXIBILE);

    if (length < sizeof(MODE_PARAMETER_HEADER)) {





        length = ClassModeSense(DeviceObject,
                                modeData,
                                MODE_DATA_SIZE,
                                MODE_PAGE_FLEXIBILE);

        if (length < sizeof(MODE_PARAMETER_HEADER)) {

            ExFreePool(modeData);
            return(DRIVE_TYPE_NONE);
        }
    }





    pageData = ClassFindModePage( modeData,
                                  length,
                                  MODE_PAGE_FLEXIBILE,
                                  TRUE);





    if ((pageData != ((void*)0)) &&
        (pageData->PageLength + 2 >=
         (UCHAR)offsetof(MODE_FLEXIBLE_DISK_PAGE, StartWritePrecom))) {





       numberOfHeads = pageData->NumberOfHeads;
       maximumTrack = pageData->NumberOfCylinders[1];
       maximumTrack |= pageData->NumberOfCylinders[0] << 8;
       sectorsPerTrack = pageData->SectorsPerTrack;






       maximumTrack--;





       for (index = 0; index < NUMBER_OF_DRIVE_MEDIA_COMBINATIONS; index++) {






            if (DriveMediaConstants[index].NumberOfHeads == numberOfHeads &&
                DriveMediaConstants[index].MaximumTrack == maximumTrack &&
                DriveMediaConstants[index].SectorsPerTrack ==sectorsPerTrack) {

                ExFreePool(modeData);






                for (length = 0; length < NUMBER_OF_DRIVE_TYPES; length++) {

                    if (DriveMediaLimits[length].HighestDriveMediaType == index) {
                        return(length);
                    }
                }
                return(DRIVE_TYPE_NONE);
           }
       }






       if (!applyFix && maximumTrack >= 0x0100) {
           maximumTrack++;
           maximumTrack /= 3;
           maximumTrack--;
           numberOfHeads *= 3;
       } else {
           ExFreePool(modeData);
           return(DRIVE_TYPE_NONE);
       }

    }

    ExFreePool(modeData);
    return(DRIVE_TYPE_NONE);
}
