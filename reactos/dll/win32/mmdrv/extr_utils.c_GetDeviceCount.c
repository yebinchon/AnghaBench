
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_3__ {scalar_t__ DeviceType; struct TYPE_3__* Next; } ;
typedef TYPE_1__* PDEVICE_LIST ;
typedef int DWORD ;


 TYPE_1__* DeviceList ;

DWORD GetDeviceCount(UINT DeviceType)
{
    int i;
    PDEVICE_LIST List;

    for (List = DeviceList, i = 0; List != ((void*)0); List = List->Next)
        if (List->DeviceType == DeviceType)
            i ++;

    return i;
}
