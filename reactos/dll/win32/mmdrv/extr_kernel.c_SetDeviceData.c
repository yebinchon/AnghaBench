
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PBYTE ;
typedef int MMRESULT ;
typedef int HANDLE ;
typedef int DWORD ;


 int DPRINT (char*) ;

MMRESULT
SetDeviceData(
    HANDLE device_handle,
    DWORD ioctl,
    PBYTE input_buffer,
    DWORD buffer_size)
{
    DPRINT("SetDeviceData\n");

    return 0;
}
