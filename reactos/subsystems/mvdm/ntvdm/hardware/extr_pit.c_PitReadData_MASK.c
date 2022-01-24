#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int LatchStatusSet; size_t StatusLatch; scalar_t__ ReadStatus; int /*<<< orphan*/  OutputLatch; } ;
typedef  int /*<<< orphan*/ * LPWORD ;
typedef  int* LPBYTE ;
typedef  size_t BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FALSE ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* PitChannels ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 

__attribute__((used)) static BYTE FUNC4(BYTE Channel)
{
    LPBYTE ReadWriteMode = NULL;
    LPWORD CurrentValue  = NULL;

    /*
     * If the status was latched, the first read operation will return the
     * latched status, whichever value (count or status) was latched first.
     */
    if (PitChannels[Channel].LatchStatusSet)
    {
        PitChannels[Channel].LatchStatusSet = FALSE;
        return PitChannels[Channel].StatusLatch;
    }

    /* To be able to read the count asynchronously, latch it first if needed */
    if (PitChannels[Channel].ReadStatus == 0) FUNC3(Channel);

    /* The count is now latched */
    FUNC0(PitChannels[Channel].ReadStatus != 0);

    ReadWriteMode = &PitChannels[Channel].ReadStatus ;
    CurrentValue  = &PitChannels[Channel].OutputLatch;

    if (*ReadWriteMode & 1)
    {
        /* Read LSB */
        *ReadWriteMode &= ~1;
        return FUNC2(*CurrentValue);
    }

    if (*ReadWriteMode & 2)
    {
        /* Read MSB */
        *ReadWriteMode &= ~2;
        return FUNC1(*CurrentValue);
    }

    /* Shouldn't get here */
    FUNC0(FALSE);
    return 0;
}