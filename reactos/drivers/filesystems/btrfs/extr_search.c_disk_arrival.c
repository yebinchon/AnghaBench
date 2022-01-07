
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int gli ;
typedef int ULONG ;
struct TYPE_8__ {int QuadPart; } ;
struct TYPE_9__ {scalar_t__ PartitionCount; int DeviceNumber; TYPE_1__ Length; scalar_t__ PartitionNumber; int DeviceType; } ;
typedef TYPE_2__ STORAGE_DEVICE_NUMBER ;
typedef int PUNICODE_STRING ;
typedef int PFILE_OBJECT ;
typedef int PDRIVER_OBJECT ;
typedef int PDEVICE_OBJECT ;
typedef scalar_t__ NTSTATUS ;
typedef int IO_STATUS_BLOCK ;
typedef TYPE_2__ GET_LENGTH_INFORMATION ;
typedef TYPE_2__ DRIVE_LAYOUT_INFORMATION_EX ;


 int ALLOC_TAG ;
 int ERR (char*,...) ;
 int ExAcquireResourceSharedLite (int *,int ) ;
 TYPE_2__* ExAllocatePoolWithTag (int ,int,int ) ;
 int ExFreePool (TYPE_2__*) ;
 int ExReleaseResourceLite (int *) ;
 int FILE_READ_ATTRIBUTES ;
 int IOCTL_DISK_GET_DRIVE_LAYOUT_EX ;
 int IOCTL_DISK_GET_LENGTH_INFO ;
 int IOCTL_STORAGE_GET_DEVICE_NUMBER ;
 scalar_t__ IoGetDeviceObjectPointer (int ,int ,int *,int *) ;
 scalar_t__ NT_SUCCESS (scalar_t__) ;
 int ObDereferenceObject (int ) ;
 int PagedPool ;
 scalar_t__ STATUS_BUFFER_TOO_SMALL ;
 int TRACE (char*,scalar_t__,...) ;
 int TRUE ;
 int UNUSED (int ) ;
 int boot_lock ;
 scalar_t__ dev_ioctl (int ,int ,int *,int ,TYPE_2__*,int,int,int *) ;
 int test_vol (int ,int ,int ,int,scalar_t__,int ) ;

void disk_arrival(PDRIVER_OBJECT DriverObject, PUNICODE_STRING devpath) {
    PFILE_OBJECT fileobj;
    PDEVICE_OBJECT devobj;
    NTSTATUS Status;
    STORAGE_DEVICE_NUMBER sdn;
    ULONG dlisize;
    DRIVE_LAYOUT_INFORMATION_EX* dli = ((void*)0);
    IO_STATUS_BLOCK iosb;
    GET_LENGTH_INFORMATION gli;

    UNUSED(DriverObject);

    ExAcquireResourceSharedLite(&boot_lock, TRUE);

    Status = IoGetDeviceObjectPointer(devpath, FILE_READ_ATTRIBUTES, &fileobj, &devobj);
    if (!NT_SUCCESS(Status)) {
        ExReleaseResourceLite(&boot_lock);
        ERR("IoGetDeviceObjectPointer returned %08x\n", Status);
        return;
    }

    dlisize = 0;

    do {
        dlisize += 1024;

        if (dli)
            ExFreePool(dli);

        dli = ExAllocatePoolWithTag(PagedPool, dlisize, ALLOC_TAG);
        if (!dli) {
            ERR("out of memory\n");
            goto end;
        }

        Status = dev_ioctl(devobj, IOCTL_DISK_GET_DRIVE_LAYOUT_EX, ((void*)0), 0,
                           dli, dlisize, 1, &iosb);
    } while (Status == STATUS_BUFFER_TOO_SMALL);


    if (NT_SUCCESS(Status) && dli->PartitionCount > 0) {
        ExFreePool(dli);
        goto end;
    }

    ExFreePool(dli);

    Status = dev_ioctl(devobj, IOCTL_DISK_GET_LENGTH_INFO, ((void*)0), 0,
                        &gli, sizeof(gli), 1, ((void*)0));

    if (!NT_SUCCESS(Status)) {
        ERR("error reading length information: %08x\n", Status);
        goto end;
    }

    Status = dev_ioctl(devobj, IOCTL_STORAGE_GET_DEVICE_NUMBER, ((void*)0), 0,
                       &sdn, sizeof(STORAGE_DEVICE_NUMBER), 1, ((void*)0));
    if (!NT_SUCCESS(Status)) {
        TRACE("IOCTL_STORAGE_GET_DEVICE_NUMBER returned %08x\n", Status);
        sdn.DeviceNumber = 0xffffffff;
        sdn.PartitionNumber = 0;
    } else
        TRACE("DeviceType = %u, DeviceNumber = %u, PartitionNumber = %u\n", sdn.DeviceType, sdn.DeviceNumber, sdn.PartitionNumber);

    test_vol(devobj, fileobj, devpath, sdn.DeviceNumber, sdn.PartitionNumber, gli.Length.QuadPart);

end:
    ObDereferenceObject(fileobj);

    ExReleaseResourceLite(&boot_lock);
}
