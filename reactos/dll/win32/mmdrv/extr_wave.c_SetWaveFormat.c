
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PWAVEFORMATEX ;
typedef int PVOID ;
typedef int HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int DPRINT (char*) ;
 int DeviceIoControl (int ,int ,int ,int ,int *,int ,int *,int *) ;
 int GetWaveFormatExSize (scalar_t__) ;
 int IOCTL_WAVE_SET_FORMAT ;

BOOL
SetWaveFormat(
    HANDLE device_handle,
    PWAVEFORMATEX format)
{
    DWORD bytes_returned;
    DWORD size;

    size = GetWaveFormatExSize(format);

    DPRINT("SetWaveFormat\n");

    return DeviceIoControl(device_handle,
                           IOCTL_WAVE_SET_FORMAT,
                           (PVOID) format,
                           size,
                           ((void*)0),
                           0,
                           &bytes_returned,
                           ((void*)0));
}
