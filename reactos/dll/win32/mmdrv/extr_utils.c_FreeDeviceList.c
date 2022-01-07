
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_3__ {scalar_t__ DeviceInstanceData; struct TYPE_3__* Next; } ;
typedef TYPE_1__* PDEVICE_LIST ;
typedef int LPVOID ;
typedef int LPSTR ;


 int DPRINT (char*) ;
 TYPE_1__* DeviceList ;
 int Heap ;
 int HeapFree (int ,int ,int ) ;

VOID FreeDeviceList()
{
    PDEVICE_LIST pDevice;

    DPRINT("FreeDeviceList()\n");

    while (DeviceList)
    {
        pDevice = DeviceList;
        DeviceList = pDevice->Next;

        if (pDevice->DeviceInstanceData)
            HeapFree(Heap, 0, (LPVOID)pDevice->DeviceInstanceData);

        HeapFree(Heap, 0, (LPSTR)pDevice);
    }
}
