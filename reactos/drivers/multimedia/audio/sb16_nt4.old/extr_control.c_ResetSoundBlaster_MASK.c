#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int ULONG ;
typedef  int /*<<< orphan*/  PSOUND_BLASTER_PARAMETERS ;
typedef  int BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FALSE ; 
 scalar_t__ SB_DSP_READY ; 
 int SB_TIMEOUT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

BOOLEAN
FUNC4(
    PSOUND_BLASTER_PARAMETERS SBDevice)
{
    BOOLEAN acked = FALSE;
    ULONG timeout;

    FUNC2(SBDevice, 0x01);
    for (timeout = 0; timeout < 30000; timeout ++ );
    FUNC2(SBDevice, 0x00);

    FUNC0("Waiting for SB to acknowledge our reset request\n");

    if ( ! FUNC3(SBDevice) )
    {
        FUNC0("Didn't get an ACK :(\n");
        return FALSE;
    }

    timeout = 0;

    while ( ( ! acked ) && ( timeout < SB_TIMEOUT ) )
    {
        acked = ( FUNC1(SBDevice) == SB_DSP_READY );
        timeout ++;
    }

    if ( ! acked )
    {
        FUNC0("Didn't get an ACK :(\n");
        return FALSE;
    }

    return TRUE;
}