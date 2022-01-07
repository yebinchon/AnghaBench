
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int devobj; } ;
typedef TYPE_1__ device ;
struct TYPE_6__ {int Size; int Flags; scalar_t__ DataSetRangesLength; scalar_t__ DataSetRangesOffset; scalar_t__ ParameterBlockLength; scalar_t__ ParameterBlockOffset; int Action; } ;
typedef int NTSTATUS ;
typedef TYPE_2__ DEVICE_MANAGE_DATA_SET_ATTRIBUTES ;


 int DEVICE_DSM_FLAG_ENTIRE_DATA_SET_RANGE ;
 int DEVICE_DSM_FLAG_TRIM_NOT_FS_ALLOCATED ;
 int DeviceDsmAction_Trim ;
 int IOCTL_STORAGE_MANAGE_DATA_SET_ATTRIBUTES ;
 int NT_SUCCESS (int ) ;
 int WARN (char*,int ) ;
 int dev_ioctl (int ,int ,TYPE_2__*,int,int *,int ,int,int *) ;

void trim_whole_device(device* dev) {
    DEVICE_MANAGE_DATA_SET_ATTRIBUTES dmdsa;
    NTSTATUS Status;



    dmdsa.Size = sizeof(DEVICE_MANAGE_DATA_SET_ATTRIBUTES);
    dmdsa.Action = DeviceDsmAction_Trim;
    dmdsa.Flags = DEVICE_DSM_FLAG_ENTIRE_DATA_SET_RANGE | DEVICE_DSM_FLAG_TRIM_NOT_FS_ALLOCATED;
    dmdsa.ParameterBlockOffset = 0;
    dmdsa.ParameterBlockLength = 0;
    dmdsa.DataSetRangesOffset = 0;
    dmdsa.DataSetRangesLength = 0;

    Status = dev_ioctl(dev->devobj, IOCTL_STORAGE_MANAGE_DATA_SET_ATTRIBUTES, &dmdsa, sizeof(DEVICE_MANAGE_DATA_SET_ATTRIBUTES), ((void*)0), 0, 1, ((void*)0));
    if (!NT_SUCCESS(Status))
        WARN("IOCTL_STORAGE_MANAGE_DATA_SET_ATTRIBUTES returned %08x\n", Status);
}
