#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ RequestedVirtualAddress; } ;
typedef  TYPE_1__ VIDEO_MEMORY ;
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_5__ {int /*<<< orphan*/  KMDriver; scalar_t__ fbScreen; } ;
typedef  scalar_t__ PVOID ;
typedef  TYPE_2__* PPDEV ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  IOCTL_VIDEO_UNMAP_VIDEO_MEMORY ; 
 int /*<<< orphan*/  TRUE ; 

BOOL FUNC3(PPDEV ppdev)
{
    VIDEO_MEMORY VideoMemory;
    ULONG ReturnedDataLength;

    VideoMemory.RequestedVirtualAddress = (PVOID)ppdev->fbScreen;

    if (FUNC2(ppdev->KMDriver,
                           IOCTL_VIDEO_UNMAP_VIDEO_MEMORY,
                           (PVOID)&VideoMemory,
                           sizeof(VIDEO_MEMORY),
                           NULL,
                           0,
                           &ReturnedDataLength))
    {
        FUNC0("Failed to unmap video memory.\n");
        FUNC1();
        return FALSE;
    }
    return TRUE;
}