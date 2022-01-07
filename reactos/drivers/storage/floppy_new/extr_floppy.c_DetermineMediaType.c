
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_9__ ;
typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_13__ ;


typedef scalar_t__ ULONG ;
typedef scalar_t__ UCHAR ;
struct TYPE_27__ {TYPE_6__* DeviceExtension; } ;
struct TYPE_26__ {int IsDMF; } ;
struct TYPE_21__ {int LowPart; } ;
struct TYPE_25__ {int BytesPerSector; int TracksPerCylinder; int SectorsPerTrack; void* MediaType; TYPE_2__ Cylinders; } ;
struct TYPE_20__ {scalar_t__ LowPart; } ;
struct TYPE_22__ {int DriverData; TYPE_1__ PartitionLength; } ;
struct TYPE_24__ {int TimeOutValue; TYPE_3__ CommonExtension; TYPE_7__ DiskGeometry; } ;
struct TYPE_23__ {int CdbLength; int TimeOutValue; scalar_t__* Cdb; } ;
struct TYPE_19__ {int NumberOfHeads; int MaximumTrack; int SectorsPerTrack; int BytesPerSector; void* MediaType; } ;
typedef TYPE_4__* PVOID ;
typedef TYPE_4__* PSCSI_REQUEST_BLOCK ;
typedef TYPE_6__* PFUNCTIONAL_DEVICE_EXTENSION ;
typedef TYPE_7__* PDISK_GEOMETRY ;
typedef TYPE_8__* PDISK_DATA ;
typedef TYPE_9__* PDEVICE_OBJECT ;
typedef int NTSTATUS ;
typedef size_t LONG ;


 int ClassReadDriveCapacity (TYPE_9__*) ;
 int ClassSendSrbSynchronous (TYPE_9__*,TYPE_4__*,TYPE_4__*,int,int ) ;
 TYPE_13__* DriveMediaConstants ;
 TYPE_4__* ExAllocatePool (int ,int) ;
 int ExFreePool (TYPE_4__*) ;
 int FALSE ;
 scalar_t__ NT_SUCCESS (int ) ;
 size_t NUMBER_OF_DRIVE_MEDIA_COMBINATIONS ;
 int NonPagedPool ;
 int NonPagedPoolNx ;
 int PAGED_CODE () ;
 int RtlCompareMemory (char*,char*,int) ;
 int RtlZeroMemory (TYPE_4__*,int) ;
 scalar_t__ SCSIOP_READ ;
 int SCSI_REQUEST_BLOCK_SIZE ;
 int STATUS_NO_MEMORY ;
 int TRUE ;
 void* Unknown ;

NTSTATUS
DetermineMediaType(
    PDEVICE_OBJECT DeviceObject
    )
{
    PFUNCTIONAL_DEVICE_EXTENSION fdoExtension = DeviceObject->DeviceExtension;
    PDISK_GEOMETRY geometry;
    LONG index;
    NTSTATUS status;

    PAGED_CODE();

    geometry = &(fdoExtension->DiskGeometry);






    status = ClassReadDriveCapacity(DeviceObject);

    if (!NT_SUCCESS(status)) {





       geometry->MediaType = Unknown;

       return status;

    }





    for (index = NUMBER_OF_DRIVE_MEDIA_COMBINATIONS - 1; index >= 0; index--) {






         if ((ULONG) (DriveMediaConstants[index].NumberOfHeads *
             (DriveMediaConstants[index].MaximumTrack + 1) *
             DriveMediaConstants[index].SectorsPerTrack *
             DriveMediaConstants[index].BytesPerSector) <=
             fdoExtension->CommonExtension.PartitionLength.LowPart &&
             DriveMediaConstants[index].BytesPerSector ==
             geometry->BytesPerSector) {

             geometry->MediaType = DriveMediaConstants[index].MediaType;
             geometry->TracksPerCylinder = DriveMediaConstants[index].NumberOfHeads;
             geometry->SectorsPerTrack = DriveMediaConstants[index].SectorsPerTrack;
             geometry->Cylinders.LowPart = DriveMediaConstants[index].MaximumTrack+1;
             break;
         }
    }

    if (index == -1) {





        geometry->MediaType = Unknown;


    } else {



        PDISK_DATA diskData = (PDISK_DATA) fdoExtension->CommonExtension.DriverData;







            PSCSI_REQUEST_BLOCK srb;
            PVOID readData;






            readData = ExAllocatePool(NonPagedPoolNx, geometry->BytesPerSector);



            if (readData == ((void*)0)) {
                return STATUS_NO_MEMORY;
            }


            srb = ExAllocatePool(NonPagedPoolNx, SCSI_REQUEST_BLOCK_SIZE);




            if (srb == ((void*)0)) {

                ExFreePool(readData);
                return STATUS_NO_MEMORY;
            }

            RtlZeroMemory(readData, geometry->BytesPerSector);
            RtlZeroMemory(srb, SCSI_REQUEST_BLOCK_SIZE);

            srb->CdbLength = 10;
            srb->Cdb[0] = SCSIOP_READ;
            srb->Cdb[5] = 0;
            srb->Cdb[8] = (UCHAR) 1;





            srb->TimeOutValue = fdoExtension->TimeOutValue;





            status = ClassSendSrbSynchronous(DeviceObject,
                      srb,
                      readData,
                      geometry->BytesPerSector,
                      FALSE
                      );

            if (NT_SUCCESS(status)) {
                char *pchar = (char *)readData;

                pchar += 3;


                if (RtlCompareMemory(pchar, "MSDMF3.", 7) == 7) {
                    diskData->IsDMF = TRUE;
                }

            }
            ExFreePool(readData);
            ExFreePool(srb);

    }
    return status;
}
