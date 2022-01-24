#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int ULONG ;
typedef  int UCHAR ;
struct TYPE_4__ {int dsp_version; } ;
typedef  TYPE_1__* PSOUND_BLASTER_PARAMETERS ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  TRUE ; 
 int first_byte ; 
 int second_byte ; 

BOOLEAN
FUNC2(
    PSOUND_BLASTER_PARAMETERS SBDevice,
    ULONG BitDepth,
    ULONG Channels,
    ULONG BlockSize)
{
    FUNC0("Initializing output with %d channels at %d bits/sample\n", Channels, BitDepth);

    UCHAR command = 0xc6, mode = 0x00;

    if ( ( Channels < 1 ) || ( Channels > 2 ) )
        return FALSE;

    if ( ( BitDepth != 8 ) && ( BitDepth != 16 ) )
        return FALSE;

    switch ( BitDepth )
    {
        case 8 :    command = 0xc6; break;
        case 16 :   command = 0xb6; break;
    };

    switch ( Channels )
    {
        case 1 :    mode = 0x00; break;
        case 2 :    mode = 0x20; break;
    }
#if 0
    first_byte = (BitDepth == 16) ? 0xb6 : 0xc6;
    second_byte = (Channels == 1) ? 0x20 : 0x00;
#endif

    if ( SBDevice->dsp_version < 0x0400 )
    {
        /* TODO: Additional programming required */
    }

    /* Send freq */
    FUNC1(SBDevice, command);
    FUNC1(SBDevice, mode);
    FUNC1(SBDevice, BlockSize % 256);
    FUNC1(SBDevice, BlockSize / 256);

    FUNC0("Finished programming the DSP\n");

    return TRUE;
}