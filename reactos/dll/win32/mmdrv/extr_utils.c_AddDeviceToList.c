
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {struct TYPE_3__* Next; int * DeviceInstanceData; int Name; void* CardIndex; void* DeviceType; } ;
typedef TYPE_1__* PDEVICE_LIST ;
typedef int LPWSTR ;
typedef void* DWORD ;
typedef int DEVICE_LIST ;
typedef int BOOL ;


 int DPRINT (char*) ;
 int ERROR_NOT_ENOUGH_MEMORY ;
 int FALSE ;
 int Heap ;
 scalar_t__ HeapAlloc (int ,int ,int) ;
 int SetLastError (int ) ;
 int TRUE ;
 int lstrcpy (int ,int ) ;
 int lstrlen (int ) ;

BOOL AddDeviceToList(PDEVICE_LIST* pList, DWORD DeviceType, DWORD CardIndex,
                     LPWSTR Name)
{
    PDEVICE_LIST pNewDevice;

    DPRINT("AddDeviceToList()\n");

    pNewDevice = (PDEVICE_LIST) HeapAlloc(Heap, 0,
        sizeof(DEVICE_LIST) + lstrlen(Name) * sizeof(WCHAR));

    if ( !pNewDevice )
    {
        SetLastError(ERROR_NOT_ENOUGH_MEMORY);
        return FALSE;
    }

    pNewDevice->DeviceType = DeviceType;
    pNewDevice->CardIndex = CardIndex;
    lstrcpy(pNewDevice->Name, Name);
    pNewDevice->DeviceInstanceData = ((void*)0);
    pNewDevice->Next = *pList;
    *pList = pNewDevice;

    DPRINT("Success!\n");

    return TRUE;
}
