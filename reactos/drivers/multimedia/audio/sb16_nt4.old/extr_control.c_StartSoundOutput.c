
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ULONG ;
typedef int UCHAR ;
struct TYPE_4__ {int dsp_version; } ;
typedef TYPE_1__* PSOUND_BLASTER_PARAMETERS ;
typedef int BOOLEAN ;


 int DPRINT (char*,...) ;
 int FALSE ;
 int SbWriteData (TYPE_1__*,int) ;
 int TRUE ;
 int first_byte ;
 int second_byte ;

BOOLEAN
StartSoundOutput(
    PSOUND_BLASTER_PARAMETERS SBDevice,
    ULONG BitDepth,
    ULONG Channels,
    ULONG BlockSize)
{
    DPRINT("Initializing output with %d channels at %d bits/sample\n", Channels, BitDepth);

    UCHAR command = 0xc6, mode = 0x00;

    if ( ( Channels < 1 ) || ( Channels > 2 ) )
        return FALSE;

    if ( ( BitDepth != 8 ) && ( BitDepth != 16 ) )
        return FALSE;

    switch ( BitDepth )
    {
        case 8 : command = 0xc6; break;
        case 16 : command = 0xb6; break;
    };

    switch ( Channels )
    {
        case 1 : mode = 0x00; break;
        case 2 : mode = 0x20; break;
    }





    if ( SBDevice->dsp_version < 0x0400 )
    {

    }


    SbWriteData(SBDevice, command);
    SbWriteData(SBDevice, mode);
    SbWriteData(SBDevice, BlockSize % 256);
    SbWriteData(SBDevice, BlockSize / 256);

    DPRINT("Finished programming the DSP\n");

    return TRUE;
}
