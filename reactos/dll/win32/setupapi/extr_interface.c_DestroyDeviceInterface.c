
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct DeviceInterface {int dummy; } ;
typedef int BOOL ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,struct DeviceInterface*) ;

BOOL
DestroyDeviceInterface(
    struct DeviceInterface* deviceInterface)
{
    return HeapFree(GetProcessHeap(), 0, deviceInterface);
}
