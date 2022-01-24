#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int ULONG ;
typedef  int UCHAR ;
struct TYPE_17__ {scalar_t__ MediaType; scalar_t__ NumberOfHeads; scalar_t__ SectorsPerTrack; int MaximumTrack; int BytesPerSector; } ;
struct TYPE_16__ {int PageLength; scalar_t__ NumberOfHeads; scalar_t__ SectorsPerTrack; int* NumberOfCylinders; int* BytesPerSector; } ;
struct TYPE_15__ {int CdbLength; int* Cdb; int TimeOutValue; } ;
typedef  TYPE_1__* PVOID ;
typedef  TYPE_1__* PSCSI_REQUEST_BLOCK ;
typedef  TYPE_3__* PMODE_FLEXIBLE_DISK_PAGE ;
typedef  TYPE_4__* PDRIVE_MEDIA_CONSTANTS ;
typedef  int /*<<< orphan*/  PDEVICE_OBJECT ;
typedef  scalar_t__ PCHAR ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  MODE_PARAMETER_HEADER ;
typedef  scalar_t__ MEDIA_TYPE ;
typedef  size_t DRIVE_MEDIA_TYPE ;

/* Variables and functions */
 TYPE_3__* FUNC0 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 size_t Drive120MMedia120M ; 
 size_t Drive360Media160 ; 
 TYPE_4__* DriveMediaConstants ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FALSE ; 
 int MODE_DATA_SIZE ; 
 int /*<<< orphan*/  MODE_FLEXIBLE_DISK_PAGE ; 
 int /*<<< orphan*/  MODE_PAGE_FLEXIBILE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NonPagedPool ; 
 int /*<<< orphan*/  NonPagedPoolCacheAligned ; 
 int /*<<< orphan*/  NonPagedPoolNx ; 
 int /*<<< orphan*/  NonPagedPoolNxCacheAligned ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 int SCSIOP_FORMAT_UNIT ; 
 int SCSIOP_MODE_SELECT ; 
 int SCSI_REQUEST_BLOCK_SIZE ; 
 int /*<<< orphan*/  STATUS_INSUFFICIENT_RESOURCES ; 
 int /*<<< orphan*/  STATUS_INVALID_DEVICE_REQUEST ; 
 int /*<<< orphan*/  STATUS_INVALID_PARAMETER ; 
 int /*<<< orphan*/  StartWritePrecom ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

NTSTATUS
FUNC10(
    PDEVICE_OBJECT DeviceObject,
    MEDIA_TYPE MediaType
    )
/*++

Routine Description:

    This routine formats the floppy disk.  The entire floppy is formated in
    one shot.

Arguments:

    DeviceObject - Supplies the device object to be tested.

    Irp - Supplies a pointer to the requesting Irp.

    MediaType - Supplies the media type format the device for.

Return Value:

    Returns a status for the operation.

--*/
{
    PVOID modeData;
    PSCSI_REQUEST_BLOCK srb;
    PMODE_FLEXIBLE_DISK_PAGE pageData;
    DRIVE_MEDIA_TYPE driveMediaType;
    PDRIVE_MEDIA_CONSTANTS driveMediaConstants;
    ULONG length;
    NTSTATUS status;

    FUNC6();

#ifndef __REACTOS__
    modeData = FUNC3(NonPagedPoolNxCacheAligned, MODE_DATA_SIZE);
#else
    modeData = ExAllocatePool(NonPagedPoolCacheAligned, MODE_DATA_SIZE);
#endif

    if (modeData == NULL) {
        return(STATUS_INSUFFICIENT_RESOURCES);
    }

    FUNC8(modeData, MODE_DATA_SIZE);

    length = FUNC1(DeviceObject,
                            modeData,
                            MODE_DATA_SIZE,
                            MODE_PAGE_FLEXIBILE);

    if (length < sizeof(MODE_PARAMETER_HEADER)) {
        FUNC4(modeData);
        return(STATUS_INVALID_DEVICE_REQUEST);
    }

    //
    // Look for the flexible disk mode page.
    //

    pageData = FUNC0( modeData, length, MODE_PAGE_FLEXIBILE, TRUE);

    //
    // Make sure the page is returned and is large enough.
    //

    if ((pageData == NULL) ||
        (pageData->PageLength + 2 <
         (UCHAR)FUNC9(MODE_FLEXIBLE_DISK_PAGE, StartWritePrecom))) {

        FUNC4(modeData);
        return(STATUS_INVALID_DEVICE_REQUEST);

    }

    //
    // Look for a drive media type which matches the requested media type.
    //
    //
    //start from Drive120MMedia120M instead of Drive2080Media2080
    //
    for (driveMediaType = Drive120MMedia120M;
    DriveMediaConstants[driveMediaType].MediaType != MediaType;
    driveMediaType--) {
         if (driveMediaType == Drive360Media160) {

             FUNC4(modeData);
             return(STATUS_INVALID_PARAMETER);

         }
    }

    driveMediaConstants = &DriveMediaConstants[driveMediaType];

    if ((pageData->NumberOfHeads != driveMediaConstants->NumberOfHeads) ||
        (pageData->SectorsPerTrack != driveMediaConstants->SectorsPerTrack) ||
        ((pageData->NumberOfCylinders[0] != (UCHAR)((driveMediaConstants->MaximumTrack+1) >> 8)) &&
         (pageData->NumberOfCylinders[1] != (UCHAR)driveMediaConstants->MaximumTrack+1)) ||
        (pageData->BytesPerSector[0] != driveMediaConstants->BytesPerSector >> 8 )) {

        //
        // Update the flexible parameters page with the new parameters.
        //

        pageData->NumberOfHeads = driveMediaConstants->NumberOfHeads;
        pageData->SectorsPerTrack = driveMediaConstants->SectorsPerTrack;
        pageData->NumberOfCylinders[0] = (UCHAR)((driveMediaConstants->MaximumTrack+1) >> 8);
        pageData->NumberOfCylinders[1] = (UCHAR)driveMediaConstants->MaximumTrack+1;
        pageData->BytesPerSector[0] = driveMediaConstants->BytesPerSector >> 8;

        //
        // Clear the mode parameter header.
        //

        FUNC8(modeData, sizeof(MODE_PARAMETER_HEADER));

        //
        // Set the length equal to the length returned for the flexible page.
        //

        length = pageData->PageLength + 2;

        //
        // Copy the page after the mode parameter header.
        //

        FUNC7((PCHAR) modeData + sizeof(MODE_PARAMETER_HEADER),
                pageData,
                length
                );
            length += sizeof(MODE_PARAMETER_HEADER);


        //
        // Allocate a Srb for the format command.
        //

#ifndef __REACTOS__
        srb = FUNC3(NonPagedPoolNx, SCSI_REQUEST_BLOCK_SIZE);
#else
        srb = ExAllocatePool(NonPagedPool, SCSI_REQUEST_BLOCK_SIZE);
#endif

        if (srb == NULL) {

            FUNC4(modeData);
            return(STATUS_INSUFFICIENT_RESOURCES);
        }

        FUNC8(srb, SCSI_REQUEST_BLOCK_SIZE);

        srb->CdbLength = 6;
        srb->Cdb[0] = SCSIOP_MODE_SELECT;
        srb->Cdb[4] = (UCHAR) length;

        //
        // Set the PF bit.
        //

        srb->Cdb[1] |= 0x10;

        //
        // Set timeout value.
        //

        srb->TimeOutValue = 2;

        //
        // Send the mode select data.
        //

        status = FUNC2(DeviceObject,
                  srb,
                  modeData,
                  length,
                  TRUE
                  );

        //
        // The mode data not needed any more so free it.
        //

        FUNC4(modeData);

        if (!FUNC5(status)) {
            FUNC4(srb);
            return(status);
        }

    } else {

        //
        // The mode data not needed any more so free it.
        //

        FUNC4(modeData);

        //
        // Allocate a Srb for the format command.
        //

#ifndef __REACTOS__
        srb = FUNC3(NonPagedPoolNx, SCSI_REQUEST_BLOCK_SIZE);
#else
        srb = ExAllocatePool(NonPagedPool, SCSI_REQUEST_BLOCK_SIZE);
#endif

        if (srb == NULL) {
            return(STATUS_INSUFFICIENT_RESOURCES);
        }

    }

    FUNC8(srb, SCSI_REQUEST_BLOCK_SIZE);

    srb->CdbLength = 6;

    srb->Cdb[0] = SCSIOP_FORMAT_UNIT;

    //
    // Set timeout value.
    //

    srb->TimeOutValue = 10 * 60;

    status = FUNC2(DeviceObject,
                                     srb,
                                     NULL,
                                     0,
                                     FALSE
                                     );
    FUNC4(srb);

    return(status);

}