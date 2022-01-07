
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int HANDLE ;
typedef int DeviceType ;
typedef scalar_t__ DWORD ;


 int CloseHandle (int ) ;
 int DPRINT (char*,scalar_t__,int ) ;
 int GENERIC_READ ;
 scalar_t__ MMSYSERR_NOERROR ;
 scalar_t__ OpenKernelDevice (int ,scalar_t__,int ,int *) ;

DWORD
GetDeviceCount(DeviceType device_type)
{
    UINT index = 0;
    HANDLE handle;



    while ( OpenKernelDevice(device_type, index, GENERIC_READ, &handle) == MMSYSERR_NOERROR )
    {
        CloseHandle(handle);
        index ++;
    }

    DPRINT("Found %d devices of type %d\n", index, device_type);

    return index;
}
