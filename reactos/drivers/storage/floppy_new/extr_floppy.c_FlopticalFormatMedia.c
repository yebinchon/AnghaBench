
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_12__ {scalar_t__ Status; } ;
struct TYPE_11__ {int QuadPart; } ;
struct TYPE_10__ {int NumberOfHeads; int SectorsPerTrack; int BytesPerSector; } ;
struct TYPE_9__ {int EndCylinderNumber; int StartCylinderNumber; int EndHeadNumber; int StartHeadNumber; } ;
typedef int * PVOID ;
typedef int * PIRP ;
typedef TYPE_1__* PFORMAT_PARAMETERS ;
typedef TYPE_2__* PDRIVE_MEDIA_CONSTANTS ;
typedef int PDEVICE_OBJECT ;
typedef scalar_t__ NTSTATUS ;
typedef TYPE_3__ LARGE_INTEGER ;
typedef int KEVENT ;
typedef TYPE_4__ IO_STATUS_BLOCK ;


 size_t Drive2080Media2080 ;
 TYPE_2__* DriveMediaConstants ;
 int * ExAllocatePool (int ,int) ;
 int ExFreePool (int *) ;
 int Executive ;
 int FALSE ;
 int IRP_MJ_WRITE ;
 int * IoBuildSynchronousFsdRequest (int ,int ,int *,int,TYPE_3__*,int *,TYPE_4__*) ;
 scalar_t__ IoCallDriver (int ,int *) ;
 int KeInitializeEvent (int *,int ,int ) ;
 int KeWaitForSingleObject (int *,int ,int ,int ,int *) ;
 int KernelMode ;
 scalar_t__ NT_SUCCESS (scalar_t__) ;
 int NonPagedPoolCacheAligned ;
 int NonPagedPoolNxCacheAligned ;
 int NotificationEvent ;
 int PAGED_CODE () ;
 int RtlZeroMemory (int *,int) ;
 scalar_t__ STATUS_INSUFFICIENT_RESOURCES ;
 scalar_t__ STATUS_PENDING ;

NTSTATUS
FlopticalFormatMedia(
    PDEVICE_OBJECT DeviceObject,
    PFORMAT_PARAMETERS Format
    )
{
    IO_STATUS_BLOCK ioStatus;
    PIRP irp;
    KEVENT event;
    LARGE_INTEGER offset;
    ULONG length;
    PVOID buffer;
    PDRIVE_MEDIA_CONSTANTS driveMediaConstants;
    NTSTATUS status;

    PAGED_CODE();

    driveMediaConstants = &DriveMediaConstants[Drive2080Media2080];





    length = ((Format->EndCylinderNumber - Format->StartCylinderNumber) *
        driveMediaConstants->NumberOfHeads +
        Format->EndHeadNumber - Format->StartHeadNumber + 1) *
        driveMediaConstants->SectorsPerTrack *
        driveMediaConstants->BytesPerSector;


    buffer = ExAllocatePool(NonPagedPoolNxCacheAligned, length);




    if (buffer == ((void*)0)) {
        return(STATUS_INSUFFICIENT_RESOURCES);
    }

    RtlZeroMemory(buffer, length);

    offset.QuadPart =
    (Format->StartCylinderNumber * driveMediaConstants->NumberOfHeads +
    Format->StartHeadNumber) * driveMediaConstants->SectorsPerTrack *
    driveMediaConstants->BytesPerSector;






    KeInitializeEvent(&event, NotificationEvent, FALSE);





    irp = IoBuildSynchronousFsdRequest(
       IRP_MJ_WRITE,
       DeviceObject,
       buffer,
       length,
       &offset,
       &event,
       &ioStatus);

    if (irp != ((void*)0)) {
        status = IoCallDriver(DeviceObject, irp);

        if (status == STATUS_PENDING) {





            KeWaitForSingleObject(&event, Executive, KernelMode, FALSE, ((void*)0));
        }





        if (NT_SUCCESS(status)) {
            status = ioStatus.Status;
        }
    } else {
       status = STATUS_INSUFFICIENT_RESOURCES;
    }

    ExFreePool(buffer);

    return(status);

}
