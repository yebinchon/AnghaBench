
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ RequestedVirtualAddress; } ;
typedef TYPE_1__ VIDEO_MEMORY ;
typedef int ULONG ;
struct TYPE_5__ {int KMDriver; scalar_t__ fbScreen; } ;
typedef scalar_t__ PVOID ;
typedef TYPE_2__* PPDEV ;
typedef int BOOL ;


 int DPRINT1 (char*) ;
 int EngDebugBreak () ;
 scalar_t__ EngDeviceIoControl (int ,int ,scalar_t__,int,int *,int ,int *) ;
 int FALSE ;
 int IOCTL_VIDEO_UNMAP_VIDEO_MEMORY ;
 int TRUE ;

BOOL DeinitVGA(PPDEV ppdev)
{
    VIDEO_MEMORY VideoMemory;
    ULONG ReturnedDataLength;

    VideoMemory.RequestedVirtualAddress = (PVOID)ppdev->fbScreen;

    if (EngDeviceIoControl(ppdev->KMDriver,
                           IOCTL_VIDEO_UNMAP_VIDEO_MEMORY,
                           (PVOID)&VideoMemory,
                           sizeof(VIDEO_MEMORY),
                           ((void*)0),
                           0,
                           &ReturnedDataLength))
    {
        DPRINT1("Failed to unmap video memory.\n");
        EngDebugBreak();
        return FALSE;
    }
    return TRUE;
}
