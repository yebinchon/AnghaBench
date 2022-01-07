
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int ULONG ;
typedef int UCHAR ;
struct TYPE_17__ {scalar_t__ MediaType; scalar_t__ NumberOfHeads; scalar_t__ SectorsPerTrack; int MaximumTrack; int BytesPerSector; } ;
struct TYPE_16__ {int PageLength; scalar_t__ NumberOfHeads; scalar_t__ SectorsPerTrack; int* NumberOfCylinders; int* BytesPerSector; } ;
struct TYPE_15__ {int CdbLength; int* Cdb; int TimeOutValue; } ;
typedef TYPE_1__* PVOID ;
typedef TYPE_1__* PSCSI_REQUEST_BLOCK ;
typedef TYPE_3__* PMODE_FLEXIBLE_DISK_PAGE ;
typedef TYPE_4__* PDRIVE_MEDIA_CONSTANTS ;
typedef int PDEVICE_OBJECT ;
typedef scalar_t__ PCHAR ;
typedef int NTSTATUS ;
typedef int MODE_PARAMETER_HEADER ;
typedef scalar_t__ MEDIA_TYPE ;
typedef size_t DRIVE_MEDIA_TYPE ;


 TYPE_3__* ClassFindModePage (TYPE_1__*,int,int ,int ) ;
 int ClassModeSense (int ,TYPE_1__*,int,int ) ;
 int ClassSendSrbSynchronous (int ,TYPE_1__*,TYPE_1__*,int,int ) ;
 size_t Drive120MMedia120M ;
 size_t Drive360Media160 ;
 TYPE_4__* DriveMediaConstants ;
 TYPE_1__* ExAllocatePool (int ,int) ;
 int ExFreePool (TYPE_1__*) ;
 int FALSE ;
 int MODE_DATA_SIZE ;
 int MODE_FLEXIBLE_DISK_PAGE ;
 int MODE_PAGE_FLEXIBILE ;
 int NT_SUCCESS (int ) ;
 int NonPagedPool ;
 int NonPagedPoolCacheAligned ;
 int NonPagedPoolNx ;
 int NonPagedPoolNxCacheAligned ;
 int PAGED_CODE () ;
 int RtlMoveMemory (scalar_t__,TYPE_3__*,int) ;
 int RtlZeroMemory (TYPE_1__*,int) ;
 int SCSIOP_FORMAT_UNIT ;
 int SCSIOP_MODE_SELECT ;
 int SCSI_REQUEST_BLOCK_SIZE ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_INVALID_DEVICE_REQUEST ;
 int STATUS_INVALID_PARAMETER ;
 int StartWritePrecom ;
 int TRUE ;
 scalar_t__ offsetof (int ,int ) ;

NTSTATUS
FormatMedia(
    PDEVICE_OBJECT DeviceObject,
    MEDIA_TYPE MediaType
    )
{
    PVOID modeData;
    PSCSI_REQUEST_BLOCK srb;
    PMODE_FLEXIBLE_DISK_PAGE pageData;
    DRIVE_MEDIA_TYPE driveMediaType;
    PDRIVE_MEDIA_CONSTANTS driveMediaConstants;
    ULONG length;
    NTSTATUS status;

    PAGED_CODE();


    modeData = ExAllocatePool(NonPagedPoolNxCacheAligned, MODE_DATA_SIZE);




    if (modeData == ((void*)0)) {
        return(STATUS_INSUFFICIENT_RESOURCES);
    }

    RtlZeroMemory(modeData, MODE_DATA_SIZE);

    length = ClassModeSense(DeviceObject,
                            modeData,
                            MODE_DATA_SIZE,
                            MODE_PAGE_FLEXIBILE);

    if (length < sizeof(MODE_PARAMETER_HEADER)) {
        ExFreePool(modeData);
        return(STATUS_INVALID_DEVICE_REQUEST);
    }





    pageData = ClassFindModePage( modeData, length, MODE_PAGE_FLEXIBILE, TRUE);





    if ((pageData == ((void*)0)) ||
        (pageData->PageLength + 2 <
         (UCHAR)offsetof(MODE_FLEXIBLE_DISK_PAGE, StartWritePrecom))) {

        ExFreePool(modeData);
        return(STATUS_INVALID_DEVICE_REQUEST);

    }







    for (driveMediaType = Drive120MMedia120M;
    DriveMediaConstants[driveMediaType].MediaType != MediaType;
    driveMediaType--) {
         if (driveMediaType == Drive360Media160) {

             ExFreePool(modeData);
             return(STATUS_INVALID_PARAMETER);

         }
    }

    driveMediaConstants = &DriveMediaConstants[driveMediaType];

    if ((pageData->NumberOfHeads != driveMediaConstants->NumberOfHeads) ||
        (pageData->SectorsPerTrack != driveMediaConstants->SectorsPerTrack) ||
        ((pageData->NumberOfCylinders[0] != (UCHAR)((driveMediaConstants->MaximumTrack+1) >> 8)) &&
         (pageData->NumberOfCylinders[1] != (UCHAR)driveMediaConstants->MaximumTrack+1)) ||
        (pageData->BytesPerSector[0] != driveMediaConstants->BytesPerSector >> 8 )) {





        pageData->NumberOfHeads = driveMediaConstants->NumberOfHeads;
        pageData->SectorsPerTrack = driveMediaConstants->SectorsPerTrack;
        pageData->NumberOfCylinders[0] = (UCHAR)((driveMediaConstants->MaximumTrack+1) >> 8);
        pageData->NumberOfCylinders[1] = (UCHAR)driveMediaConstants->MaximumTrack+1;
        pageData->BytesPerSector[0] = driveMediaConstants->BytesPerSector >> 8;





        RtlZeroMemory(modeData, sizeof(MODE_PARAMETER_HEADER));





        length = pageData->PageLength + 2;





        RtlMoveMemory((PCHAR) modeData + sizeof(MODE_PARAMETER_HEADER),
                pageData,
                length
                );
            length += sizeof(MODE_PARAMETER_HEADER);







        srb = ExAllocatePool(NonPagedPoolNx, SCSI_REQUEST_BLOCK_SIZE);




        if (srb == ((void*)0)) {

            ExFreePool(modeData);
            return(STATUS_INSUFFICIENT_RESOURCES);
        }

        RtlZeroMemory(srb, SCSI_REQUEST_BLOCK_SIZE);

        srb->CdbLength = 6;
        srb->Cdb[0] = SCSIOP_MODE_SELECT;
        srb->Cdb[4] = (UCHAR) length;





        srb->Cdb[1] |= 0x10;





        srb->TimeOutValue = 2;





        status = ClassSendSrbSynchronous(DeviceObject,
                  srb,
                  modeData,
                  length,
                  TRUE
                  );





        ExFreePool(modeData);

        if (!NT_SUCCESS(status)) {
            ExFreePool(srb);
            return(status);
        }

    } else {





        ExFreePool(modeData);






        srb = ExAllocatePool(NonPagedPoolNx, SCSI_REQUEST_BLOCK_SIZE);




        if (srb == ((void*)0)) {
            return(STATUS_INSUFFICIENT_RESOURCES);
        }

    }

    RtlZeroMemory(srb, SCSI_REQUEST_BLOCK_SIZE);

    srb->CdbLength = 6;

    srb->Cdb[0] = SCSIOP_FORMAT_UNIT;





    srb->TimeOutValue = 10 * 60;

    status = ClassSendSrbSynchronous(DeviceObject,
                                     srb,
                                     ((void*)0),
                                     0,
                                     FALSE
                                     );
    ExFreePool(srb);

    return(status);

}
