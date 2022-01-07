
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HANDLE ;


 int CloseHandle (int ) ;

void
CloseKernelDevice(HANDLE device_handle)
{
    CloseHandle(device_handle);
}
