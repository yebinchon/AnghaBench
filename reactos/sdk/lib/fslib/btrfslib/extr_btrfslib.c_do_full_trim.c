
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Size; int Flags; scalar_t__ DataSetRangesLength; scalar_t__ DataSetRangesOffset; scalar_t__ ParameterBlockLength; scalar_t__ ParameterBlockOffset; int Action; } ;
typedef int IO_STATUS_BLOCK ;
typedef int HANDLE ;
typedef TYPE_1__ DEVICE_MANAGE_DATA_SET_ATTRIBUTES ;


 int DEVICE_DSM_FLAG_ENTIRE_DATA_SET_RANGE ;
 int DEVICE_DSM_FLAG_TRIM_NOT_FS_ALLOCATED ;
 int DeviceDsmAction_Trim ;
 int IOCTL_STORAGE_MANAGE_DATA_SET_ATTRIBUTES ;
 int NtDeviceIoControlFile (int ,int *,int *,int *,int *,int ,TYPE_1__*,int,int *,int ) ;
 int RtlZeroMemory (TYPE_1__*,int) ;

__attribute__((used)) static void do_full_trim(HANDLE h) {
    IO_STATUS_BLOCK iosb;
    DEVICE_MANAGE_DATA_SET_ATTRIBUTES dmdsa;

    RtlZeroMemory(&dmdsa, sizeof(DEVICE_MANAGE_DATA_SET_ATTRIBUTES));

    dmdsa.Size = sizeof(DEVICE_MANAGE_DATA_SET_ATTRIBUTES);
    dmdsa.Action = DeviceDsmAction_Trim;
    dmdsa.Flags = DEVICE_DSM_FLAG_ENTIRE_DATA_SET_RANGE | DEVICE_DSM_FLAG_TRIM_NOT_FS_ALLOCATED;
    dmdsa.ParameterBlockOffset = 0;
    dmdsa.ParameterBlockLength = 0;
    dmdsa.DataSetRangesOffset = 0;
    dmdsa.DataSetRangesLength = 0;

    NtDeviceIoControlFile(h, ((void*)0), ((void*)0), ((void*)0), &iosb, IOCTL_STORAGE_MANAGE_DATA_SET_ATTRIBUTES, &dmdsa, sizeof(DEVICE_MANAGE_DATA_SET_ATTRIBUTES), ((void*)0), 0);
}
