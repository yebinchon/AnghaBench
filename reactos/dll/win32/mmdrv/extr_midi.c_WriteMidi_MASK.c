#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_3__ {int /*<<< orphan*/  DeviceHandle; } ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  TYPE_1__* PMIDIALLOC ;
typedef  scalar_t__ PBYTE ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IOCTL_MIDI_PLAY ; 
 int /*<<< orphan*/  MMSYSERR_NOERROR ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static DWORD FUNC3(PBYTE pData, ULONG Length, PMIDIALLOC pClient)
{
    DWORD BytesReturned;

    FUNC0("IOCTL_MIDI_PLAY == %d [%x]\n", IOCTL_MIDI_PLAY, IOCTL_MIDI_PLAY);
    
    if ( !FUNC1(pClient->DeviceHandle, IOCTL_MIDI_PLAY, (PVOID)pData,
                          Length, NULL, 0, &BytesReturned, NULL))
        return FUNC2();

    return MMSYSERR_NOERROR;
}