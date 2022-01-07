
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_5__ {scalar_t__ RequestedVirtualAddress; } ;
typedef TYPE_1__ VIDEO_MEMORY ;
struct TYPE_6__ {int hDriver; scalar_t__ pjScreen; } ;
typedef scalar_t__ PVOID ;
typedef TYPE_2__* PPDEV ;
typedef int DWORD ;


 scalar_t__ EngDeviceIoControl (int ,int ,TYPE_1__*,int,int *,int ,int *) ;
 int IOCTL_VIDEO_UNMAP_VIDEO_MEMORY ;
 int RIP (char*) ;

VOID vDisableSURF(PPDEV ppdev)
{
    DWORD returnedDataLength;
    VIDEO_MEMORY videoMemory;

    videoMemory.RequestedVirtualAddress = (PVOID) ppdev->pjScreen;

    if (EngDeviceIoControl(ppdev->hDriver,
                           IOCTL_VIDEO_UNMAP_VIDEO_MEMORY,
                           &videoMemory,
                           sizeof(VIDEO_MEMORY),
                           ((void*)0),
                           0,
                           &returnedDataLength))
    {
        RIP("DISP vDisableSURF failed IOCTL_VIDEO_UNMAP\n");
    }
}
